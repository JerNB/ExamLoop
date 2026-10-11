> Original English guide draft. The computer-local APT path is shortened to its project-relative filename. The PDF is the final printable layout. Historical references to private mistake logs remain filenames, not supplied downloads.

# CS201 Midterm 1 — English Exam Guide (Working Draft)

**Exam constraint:** Up to six single-sided pages. This is the content draft; condense and typeset after all study materials are reviewed.

**Printable export:** `output/pdf/CS201-Midterm1-English-6-page-guide.pdf` (6 Oct 2026), six A4 portrait pages. Condensed by topic with worked examples; full question explanations remain in the separate review files. Six single-sided pages is user-confirmed; other instructor-specific format restrictions remain unconfirmed.

**Visual revision:** Printable pages 4-5 use reference arrows, a triangular pair grid, a Markov token window, step tables and runtime lookup tables instead of long paragraphs. Page 6 now includes the completed maxLetter fill-in code from Fall 2024 A Q34-35 / the supplied screenshot.

### maxLetter: char as a numeric loop/index

Fill-ins: `counts[ch]++;` and `counts[ch] > max`. A char has a numeric code: `'a'=97`, `'b'=98`, `'z'=122`; `counts['a']` accesses `counts[97]`. `for(char ch='a';ch<='z';ch++)` visits 26 consecutive lowercase letters. First pass counts; second finds the largest count; third prints letters with that count. Example sentence: `the quick brown fox jumps over the lazy dog` prints o occurring 4 times. Runtime O(|s|+26+26)=O(|s|). The 256-slot array assumes character codes below 256, not arbitrary Unicode. Only a-z are candidates; ties print every tied letter, and no letters results in all 26 letters printed with count zero. Source solution is reasoned from the supplied code, not a newly assessed attempt.

## HIGH PRIORITY 1 — Object identity, equality, and hashing

### Fast decision rule

| Java expression | Meaning for object references |
|---|---|
| `a == b` | Both references point to the **same object**. |
| `a != b` | The references point to **different objects**. |
| `a.equals(b)` | The class considers their **contents equal**; inspect its implementation. |
| `!a.equals(b)` | The class considers their **contents different**. |

`==` cannot be overridden. `.equals()` is a method and may be overridden. If a class does not override it, `Object.equals()` uses identity. Avoid calling `a.equals(b)` when `a` may be `null`; `Objects.equals(a,b)` is null-safe.

### Person201 exam example

```java
Person201 p = new Person201("Sam", 38.6, -90.19, "Alpaca");
Person201 alias = p;
Person201 copy = new Person201("Sam", 38.6, -90.19, "Alpaca");

p == alias;        // true: same object
p.equals(alias);   // true
p == copy;         // false: two calls to new
p.equals(copy);    // true: Person201 compares all four fields
p != copy;         // true
!p.equals(copy);   // false
```

For Spring 2026 B question 19, replacing `!p.equals(q)` with `p != q` preserved output only because **that input had no two distinct Person201 objects with equal contents**. The two conditions are not equivalent for arbitrary inputs.

### Common library types

```java
String s = new String("Duke"), t = new String("Duke");
s == t;       // false
s.equals(t); // true: String compares characters

String[] x = {"cat", "dog"}, y = {"cat", "dog"};
x == y;               // false
x.equals(y);           // false: arrays inherit identity equality
Arrays.equals(x, y);   // true: element-wise array comparison

List<String> a = new ArrayList<>(List.of("cat", "dog"));
List<String> b = new ArrayList<>(List.of("cat", "dog"));
a == b;       // false
a.equals(b);   // true: List compares corresponding elements in order
```

`Arrays.asList(array)` creates a fixed-size **view backed by the original array**. Two views can be different List objects but equal by contents, and changing an array element changes what both views see.

### Hash rule

If `a.equals(b)` is true, `a.hashCode() == b.hashCode()` **must** be true for correct use in `HashMap` and `HashSet`. Equal hash codes do **not** imply equal objects because collisions exist. The current local `Person201` overrides `equals` but not `hashCode`; two separate, content-equal people may behave incorrectly as hash keys. When asked about a particular snippet, reason from the given objects and class methods rather than assuming a universal equality rule.

### Equality implication table (non-null references; correct equals/hashCode contract)

| Given | Can we conclude? | Answer |
|---|---|---|
| `s.hashCode() == t.hashCode()` | `s.equals(t)` | Cannot determine: collisions exist. |
| `s.hashCode() != t.hashCode()` | `s.equals(t)` | False. |
| `s.equals(t)` | `s == t` | Cannot determine: equal contents may belong to separate objects. |
| `s.equals(t)` | `s.hashCode() == t.hashCode()` | True, for a correct implementation. |
| `!s.equals(t)` | `s.hashCode() == t.hashCode()` | Cannot determine: different objects may collide. |
| `s == t` | `s.equals(t)` | True, for a correct implementation (reflexivity). |
| `s == t` | `s.hashCode() == t.hashCode()` | True, with normal consistent implementations. |
| `s != t` | `s.equals(t)` | Cannot determine. |

```java
String s = new String("Duke"), t = new String("Duke");
s == t;                     // false: two objects
s.equals(t);                // true: same characters
s.hashCode() == t.hashCode(); // true: equality requires same hash

String a = "Aa", b = "BB";
a.equals(b);                // false
a.hashCode() == b.hashCode(); // true: collision, both 2112

String alias = s;
alias == s;                 // true
alias.equals(s);            // true
```

**Three different questions:** `==` asks for identity; `equals` asks for the class's equality rule; `hashCode` supplies a bucket-selection number and is not a unique object ID. Memorize `equals ⇒ same hash` and its contrapositive `different hash ⇒ not equals`. The converse `same hash ⇒ equals` is invalid. If `s` is null, calling `s.equals(...)` or `s.hashCode()` throws `NullPointerException`. A buggy class may violate these rules; inspect exam code. In particular, local P0 `Person201` overrides equality without overriding `hashCode`.

## HIGH PRIORITY 2 — Big O runtime

### Three-step procedure

1. Count how many times each loop or method call runs.
2. Determine the cost of the body/operation.
3. Add sequential costs; sum costs of nested loops. Keep the dominant growth term. **Runtime is different from the numeric value returned.**

| Pattern | Number of iterations / runtime |
|---|---|
| `for (i=0; i<n; i++)` | `n` → Θ(n) |
| `for (i=1; i<=n; i*=2)` | `⌊log₂ n⌋+1` → Θ(log n) |
| `for (i=0; i*i<=n; i++)` | about `√n` → Θ(√n) |
| Two independent n-loops, one after the other | `n+n=2n` → Θ(n) |
| n-loop containing an n-loop | `n×n` → Θ(n²) |
| Outer `i=1,2,4,...,n`, inner executes n times | `n log n` → Θ(n log n) |
| Outer `i=1,2,4,...,n`, inner executes i times | `1+2+4+...+n < 2n` → Θ(n) |
| Outer i up to √n, inner executes i times | `1+2+...+√n` → Θ(n) |
| Pair loop `for i... for j=i+1...` | `n(n−1)/2` → Θ(n²) |

### Common sums: returned values versus total work

| Sum | Formula and growth |
|---|---|
| `1+2+...+N` | `N(N+1)/2`, Θ(N²) |
| `0+1+...+(N-1)` | `N(N-1)/2`, Θ(N²) |
| `1²+2²+...+N²` | `N(N+1)(2N+1)/6`, Θ(N³) |
| `1³+2³+...+N³` | `[N(N+1)/2]²`, Θ(N⁴) |
| `1+2+4+...+2^m` | `2^(m+1)-1`; if `N=2^m`, `2N-1`, Θ(N) |
| `1+1/2+...+1/N` | Θ(log N) |

Adding `i` or `i*i` once per iteration still takes Θ(N) for N iterations in the course arithmetic model. Running an inner body i times instead produces sum i = Θ(N²) operations. A formula's numeric growth does not by itself determine runtime.

### Data-structure operation reminders

- `ArrayList.size()` and indexed `get(i)`: O(1); scanning all elements: O(n).
- `ArrayList.add` at the end: amortized O(1), occasional resize O(n); n appends total O(n).
- `ArrayList.set(i,x)`: O(1) replacement; indexed insertion/`ListIterator.add` in the middle: O(n) shifting. N middle insertions can cost Θ(N²).
- `HashMap.get/put`, `HashSet.add/contains`: expected O(1) under the course's good-hashing assumption. Fall 2025 A question 2 officially uses **A: O(1) per HashSet.add**; do not import the ArrayList resize answer into that question.
- If a hash key is a `List` of M words, computing its Java `hashCode()` traverses the M elements: O(M) even when the table lookup is expected O(1) afterward. Many exam questions silently hold M constant.
- Looking for the longest value list in `Map<K,List<V>>` with N keys: O(N) if `list.size()` gives the needed count; the maximum list length M is not multiplied in.
- Repeated `String += base` copies the growing immutable String: n appends of a constant-size base take Θ(n²); if `base.length()` itself is Θ(n), n appends take Θ(n³).
- For bounded-size words, adding N words to a list then joining once is Θ(N); using `ret += next + " "` every iteration is Θ(N²). `StringBuilder` is the incremental linear-time alternative.

### Project costs (fixed Markov order)

| Task | Runtime |
|---|---|
| P0: scan N people once | Θ(N) |
| P0: compare all distinct person pairs | Θ(N²) |
| P1: train Simple or Hash on T words | Θ(T) expected |
| P1: Simple `getFollows` | Θ(T) |
| P1: Hash `getFollows` | O(1) expected |
| P1: generate up to N words with Simple | O(NT) |
| P1: generate up to N words with Hash | O(N) expected |

For variable Markov order M, P1 `createNewContext` copies M words (Θ(M)) on each step. Hashing a `List<String>` context also traverses M words. Generation is therefore typically Θ(NM), plus output joining, in the actual Java implementation. The exam's O(N) claim assumes fixed M. Also, `ArrayList.subList(0,M)` creates a view in O(1); the Fall 2026 practice Q44's O(M) premise for this operation is inaccurate for the local `ArrayList`.

### P1 method runtime reference — corrected from the supplied screenshot

N = total tokens in the stored, padded training sequence; n = number of words generated; k = model order/context length. Assume bounded word lengths, normal ArrayList storage, expected good hashing, and up to n iterations before END. Fixed-k runtimes match the usual exam model. The variable-k column includes context comparisons, hashing, and copying; Simple bounds are worst case for list comparisons.

| Method | Fixed k | When k varies | Reason |
|---|---|---|---|
| `trainText(text)` / `trainDirectory(dir)` on fresh training data | O(N) expected | Simple: O(N); Hash: O(Nk) expected | Read/tokenize/pad, then dynamically dispatch to `processTraining`. N includes padding; file traversal overhead excluded. |
| `getRandomContext()` | O(1) | O(k) | `subList` view, then `List.copyOf` copies k references. |
| `differentContexts()` | O(N) expected | O(Nk) expected | N windows inserted into a HashSet; each list key needs hashing. |
| `createNewContext(context,word)` | O(1) | O(k) | Copy k−1 words, append one, make immutable copy. |
| Simple `getFollows(context)` | O(N) | O(Nk) worst case | Scan windows; equality comparison can examine k words. |
| Hash `processTraining()` | O(N) expected | O(Nk) expected | Process windows and hash context keys. |
| Hash `getFollows(context)` | O(1) expected | O(k) expected | Hash k-word list, then retrieve existing follow list. No full follow-list copy. |
| Simple `randomNextString(context)` | O(N) | O(Nk) worst case | Calls Simple `getFollows`, then O(1) selection. |
| Hash `randomNextString(context)` | O(1) expected | O(k) expected | Calls Hash `getFollows`, then O(1) selection. |
| Simple `generate(n)` | O(nN) | O(nNk) worst case | n follow searches, context updates, one final join. |
| Hash `generate(n)` | O(n) expected | O(nk) expected | n map lookups and context copies, one final join. |
| `getSequence()` | O(N) | O(N) | Immutable copy of the entire sequence. |

**Screenshot correction:** `randomNextString()` is not always O(1). Its total cost includes `getFollows(context)`; only random-index selection and indexed retrieval are O(1). Inherited methods can execute different subclass implementations through dynamic dispatch. If training is repeated, Hash training rebuilds its map from the accumulated sequence, so count total stored N, not just newly added words. For unbounded word lengths, tokenization/joining also depend on total character count.

### Runtime versus return value: Spring 2026 B `totes`

```java
int sum = 0;
for (int k=1; k<=n; k++) sum += k+k;
return sum;
```

Runtime: Θ(n), because the loop runs n times. Returned number: `2(1+...+n)=n(n+1)=Θ(n²)`. These answer **different questions**.


### Constructors, overriding, and overloading — one worked example

```java
class Person {
    private String name;
    private int age;

    public Person(String name, int age) { // constructor: no return type
        System.out.println("A");
        this.name = name; // object's field = parameter
        this.age = age;
    }
    public Person(String name) { // overloaded constructor
        this(name, 0);           // initialize the SAME object via other constructor
        System.out.println("B");
    }
    @Override
    public String toString() {   // overrides Object.toString()
        return name + " (" + age + ")";
    }
    public boolean equals(Person other) { // OVERLOAD, not Object.equals override
        return name.equals(other.name) && age == other.age;
    }
}
Person p = new Person("Amy");
System.out.println(p);
// Output, in order:
// A
// B
// Amy (0)
```

**Trace:** `new Person("Amy")` creates one object and enters the one-argument constructor. `this("Amy",0)` runs the two-argument constructor, which prints A and initializes fields. Return to the one-argument constructor and print B. Then `println(p)` uses overridden toString and prints Amy (0). The argument 0 determines age; an earlier example's 18 does not carry over.

| Rule | Exam reminder |
|---|---|
| Constructor | Same name as class; no return type, including no void. Runs during `new`. |
| Constructor overloading | Different parameter lists offer different ways to initialize an object. |
| `this.field` / `this(...)` / `super(...)` | Current object's field / another constructor in this class / parent constructor. For CS201, put constructor delegation first. |
| Automatic no-argument constructor | Supplied only if the class declares NO constructors. Declaring Person(String) does not also supply Person(). |
| Constructors and inheritance | Constructors are not inherited and cannot be overridden. |
| Overriding | Implement an inherited instance method with matching name and parameter types; compatible return type and access are also required. |
| Overloading | Same method name, different parameter lists. `equals(Person)` overloads inherited `equals(Object)`. |
| `@Override` | Optional compiler check. A correct declaration overrides without the annotation; the annotation alone cannot make an overload into an override. |
| Printing | `println(p)` and `printf("%s",p)` use p.toString(); `println(p.name())` prints the getter's returned String. toString RETURNS text; it does not itself print. |
| Dynamic dispatch (P1) | For overridden instance methods, actual object type chooses implementation: BaseMarkovModel m = new HashMarkovModel(2); inherited generate calls HashMarkovModel.getFollows. |

**Signature trap:** To override equality, write `public boolean equals(Object other)`. `public boolean equals(Person other)` has a different parameter type and overloads it. Adding `@Override` to the latter produces a compile error if no matching inherited method exists. Java does not select an override based on the annotation.

### Code tracing: printing, Scanner, constructors, and hash-map calls (Fall 2024)

| Expression | Method behavior |
|---|---|
| `println(p)`, `printf("%s",p)`, `"text" + p` | Uses p.toString() for non-null objects. |
| `println(p.name())` | Calls name(); prints the returned String. Does not call Person201.toString(). |
| `new C(scan.nextDouble(),scan.next())` | Evaluates argument calls left to right; each consumes one token. `nextDouble()` accepts `25` as 25.0. |
| `this(0,0,mass,file)` | Calls a matching constructor of this class; arity and types must match. |
| `b.privateField` inside b's declaring class | Allowed, even when b is another instance. |
| `Math.sqrt(x)` | No explicit import needed: java.lang is automatically imported. |

**Trace a hash-map expression before counting output:** `map.putIfAbsent(elt,elt.hashCode())` first evaluates the explicit hashCode call for the value, then HashMap internally hashes elt as its key. If each hashCode call prints one line, this gives two lines per input element in the exam. `%s` inside hashCode invokes toString; toString simply returns text and adds no line of its own. `putIfAbsent` returns an old value or null, not a boolean. In `if (!map.containsKey(elt)) map.put(elt,elt.hashCode());`, a new-key path has an additional lookup (up to three hash calls; empty-map shortcuts may vary by JDK). `new HashSet<>(map.values())` deduplicates the Integer values, not the Inner keys.

## PERSONAL ERROR CHECKLIST — reread before handing in

### APT additions: Anonymous and CounterAttack

Source: local `APT/Anonymous.java` and `CounterAttack.java`, checked against the student's screenshots. Instructor relevance: student reports that one may appear on Midterm 1. The printable PDF's page 6 right column replaces the former checklist/scope notes with both algorithms.

**Anonymous:** Lowercase and count characters in joined headlines; count each candidate message separately; require `need[ch] <= have[ch]` for every letter a-z. `getOrDefault(ch,0)` handles missing letters. Messages independently reuse the whole supply; the code does not consume headline letters between messages. Only a-z is checked, so spaces and punctuation do not affect acceptance. Example: headlines `["Ab","a"]`, messages `["AA","aba","bbb"]` returns 2. For H joined headline characters, M messages and L total message characters: expected O(H+L+26M)=O(H+L+M). Return count ranges from 0 to M. PDF uses a compact equivalent `freq` helper to avoid repeating the character-count code.

**CounterAttack:** Split `str` with `split(" ")`, then for each query word scan every token, counting exact case-sensitive `.equals` matches. Reset count inside the outer loop; write to the corresponding result index. Example: `str="a b a"`, words `["a","b","c","a"]` gives `[2,1,0,2]`. Duplicate query words repeat results. If C is input characters, Q query words and T tokens: O(C+QT) for bounded word lengths; with worst-case equality length w: O(C+QTw). Returned array length is Q. The delimiter is a single space, not the general whitespace regex `\\s+`.

Missed questions: Spring 2026 B **8, 12, 16, 19**; Fall 2025 A **1, 3, 4, 7, 9, 10, 19, 30**; Fall 2024 A **16, 18, 19, 24, 25, 26**; Fall 2026 practice **18, 28, 38, 42, 44**. Detailed worked explanations: `Midterm1-personal-mistake-log-English.md`, `Fall2024-A-missed-questions-English.md`, and `Fall2026-practice-missed-questions-English.md`.

- **Map with list values (S26 Q8):** `map.get(key).size()` is O(1); finding the largest list across N keys is O(N), not O(NM), when the count is already stored as list length.
- **Loop increments (S26 Q12):** `k++`/`k+=1` to n is O(n); multiplication is O(log n). Count actual updates.
- **Printing objects (S26 Q16):** `println(object)` or `%s` calls `toString()`; `Person201` overrides it, so it prints coordinates/name/eatery. `.name()` prints only the name.
- **Identity versus content (S26 Q19; F25 Q3):** `b=a` aliases one array; `==`/`!=` compare references; `.equals()` follows the class implementation. Distinct but content-equal Person201 objects make `p != q` true and `!p.equals(q)` false.
- **Amortized cost (F25 Q1):** one `ArrayList.add` during resize may be O(n); n appends in total are O(n). Do not confuse a single worst-case call with amortized cost.
- **Zero and initialization (F25 Q4, Q7):** adding or skipping self-distance 0 leaves a sum unchanged; changing `<` to `>` while keeping `min=Double.MAX_VALUE` leaves `best=null`.
- **Quadratic loop variants (F25 Q9):** N² checks versus N(N−1)/2 checks are both O(N²); correctness may change even when complexity does not.
- **Extreme thresholds (F25 Q10):** choose `epsilon` strictly larger than the greatest pair distance; then every person is within threshold, including self, so the count reaches N.
- **Hash implication (F25 Q19):** `equals ⇒ same hash`; `different hash ⇒ not equals`; `not equals` does **not** determine hash equality.
- **Method overriding (F25 Q30):** matching method signature causes an override; `@Override` is optional compile-time validation, not required for dynamic dispatch.
- **Constant factors (F26 practice Q18):** removing one constant-time append does not change a Θ(√N) divisor loop.
- **Replacement versus insertion (F26 practice Q28):** `set` is O(1), middle `add` shifts O(N); count body cost as well as iterations.
- **P0 receiver and symmetry (F26 practice Q38):** for a hypothetical `distanceFrom(other)` method, `this` is the caller; reversing caller/argument preserves symmetric distance. The local `Person201` lacks that method, so the practice question omits a needed premise.
- **String growth and P1 contexts (F26 practice Q42, Q44):** repeated `String +=` gives Θ(N²); `createNewContext` copies Θ(M) words. Q44's stated `subList` cost and unique-answer framing conflict with literal Java behavior.
