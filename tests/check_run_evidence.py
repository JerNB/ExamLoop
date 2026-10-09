"""Check saved evidence from the synthetic run; does not launch a model or browser."""
from pathlib import Path
import json

RUN = Path(__file__).resolve().parent / 'reports' / '2026-10-10'

def main():
    exported = json.loads((RUN/'browser-attempts.json').read_text(encoding='utf-8'))
    downloaded = json.loads((RUN/'browser-downloaded-attempts.json').read_text(encoding='utf-8'))
    assert exported == downloaded, 'Downloaded JSON differs from visible text export'
    events = exported['events']
    assert len(events) == 9
    assert events[0]['provisionalCheck'] == 'incomplete-or-invalid'
    assert events[0]['fieldMatches'] is None and not events[0]['feedbackRevealedAnswer']
    assert events[1]['fieldMatches'] == [False, True]
    assert events[3]['fieldMatches'] == [True, True]
    assert events[3]['assistanceBeforeAttempt'] == 'after-reveal'
    assert events[5]['fieldMatches'] == [True, True, True]
    assert events[5]['assistanceBeforeAttempt'] == 'after-hint'
    assert events[7]['type'] == 'reset-display'
    assert events[8]['fieldMatches'] == [True] and events[8]['assistanceBeforeAttempt'] == 'after-reveal'
    assert all(e.get('explanationReview') == 'pending-tutor-review' for e in events if e['type'] == 'attempt')
    assert json.loads((RUN/'resume/no-change-check.json').read_text(encoding='utf-8-sig'))['learning_record_unchanged_after_thanks']
    for name, count in (('revised', 5), ('resume', 3), ('cross-domain', 1)):
        for i in range(1, count+1):
            reply = (RUN/name/f'transcript-{i:02}.md').read_text(encoding='utf-8')
            assert reply.lstrip().startswith("**Hi student, let's get you uncooked.**")
    for name in ('onboarding-reply.md', 'marker-recovery-reply.md'):
        assert (RUN/name).read_text(encoding='utf-8').lstrip().startswith("**Hi student, let's get you uncooked.**")
    old = (RUN/'baseline/record-after-02.md').read_text(encoding='utf-8').lower()
    new = (RUN/'revised/record-after-02.md').read_text(encoding='utf-8').lower()
    assert 'i am tired today' in old and 'tired' not in new
    print('PASS: downloaded/text export equality, 9 event checks, assistance across reset, no-change record hash, markers, and selective retention.')
    print('These assertions verify archived evidence only; semantic behavior is reviewed in REPORT.md.')

if __name__ == '__main__':
    main()
