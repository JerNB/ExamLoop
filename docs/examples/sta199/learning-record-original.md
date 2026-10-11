> Publication note: This is the original Chinese study record. Absolute computer paths have been removed. Historical workspace filenames, dates, and learning evidence are preserved; referenced private attempts are not included. These sessions inspired the skill and predate its packaged release.

# STA 199 Exam 1 复习记录

更新：2026-10-05

已填写练习的实际位置：`[student-local working file; path removed]`（OneDrive 桌面，不能把工作区 outputs 内的空白原版当成最新作答）。2026-10-05 已实际运行原答案，批改 1-35 题，在原文件各题下方保留答案并添加反馈/补全代码；36 未作答。批改副本为 `outputs/STA199_Exam1_Practice_Reviewed.qmd`，原始作答备份在 `work/review_2026-10-05/STA199_Exam1_Practice_original.qmd`。

考试 cheat sheet 偏好（2026-10-02）：全英文、正文更大、配短代码与数值例子。双面 PDF 已重排为正文 11 pt、代码 9.4 pt；加入完整的 Render、Commit、Push、Fetch 各两句英文解释。后续更新使用 `work/build_sta199_cheatsheet_english.py`，输出沿用 `outputs/STA199_Exam1_CheatSheet_Draft.pdf` 与 `.md`。

| 题号 | 需要加强的点 | 后续复习方式 | 状态 |
|---|---|---|---|
| Practice Q12 | 先前薄弱的组内比例已做对：原代码 count 保留 genre 分组，mutate 正确保留等级行 | 结合 Q18 复练比例与比例图；不再将 Q12 标记为未掌握 | 2026-10-05 实际运行正确 |
| Practice Q13 | 全部行数、非缺失数与忽略 NA 的均值已正确；仅均值列名和文字比较未完成。单一分组的默认 summarize 已自动解除分组 | 结合 Q33 复练计数前不要删缺失记录 | 2026-10-05 计算正确，输出要求待补 |
| Mock Exam 1 图表题 | 用户自述 mock 错题不多，主要希望提高多选题准确性；提出 Q13 与 Q29，未提供完整作答记录 | 重点练每个选项的完整陈述是否有证据支持，继续巩固变量类型→目的→图形的选择 | 用户自述整体较好，针对性复练 |
| Mock Q13 | 散点解释检查 direction、form、strength、outliers；原句已说 positive，因此不能选“未提方向”；results in 是因果措辞；异常值要有图上证据并说明位置 | 对每个 peer-review 选项分别核对原解释与 Top 分面；答案 c、d、e、f | 已针对讲解，待确认理解 |
| Mock Q29 | 区分管道返回的 6×6 输出与原始 movies 对象；count 后每行是组合，pivot_wider 后每行是 rating；没有赋值回 movies，因此 e 不成立 | 比较无赋值、movie_counts <- 管道、movies <- 管道三个情形；逐项预测原对象与输出的行列数及每行含义 | 用户明确询问 e，已针对讲解，待复练 |
| Practice Q9 | grouped mutate 被预测为 3 行，应为原始的 18 行；summarize 的 3 行正确 | 每次操作先说每行代表什么，再预测行数；比较 grouped summarize 与 mutate | 高优先级 |
| Practice Q30 | left_join 重复键行数预测为 3，应为 4；代码本身正确 | 给每个左表行画出右表匹配数，未匹配也保留一行 | 高优先级 |
| Practice Q2/5/14/24/31 | 漏条件、>= 写成 >、升序写成降序、漏排序，以及没有筛 Vault 就求均值 | 写代码前逐条勾选条件、边界、排序、列名、每行含义；Q5 当前数据碰巧结果相同仍须改条件 | 高优先级，偏题意准确性 |
| Practice Q16/18/19 | Q16 group 分出箱体但未映射 x 类别，轴无法识别组；Q18 缺 fill 和 position=fill；Q19 缺百分比显示 | 变量→aes 的映射及 count/proportion；完整英文解释，标题与单位 | 高优先级 |
| Practice Q22/25 | pivot 的方向和选择正确，但 year 未转数值，week 要 integer 却转 double；Q22 的值列名不符题目 | names_to 默认 character；names_transform=list(year=as.integer)；as.numeric vs as.integer | 类型细节待练 |
| Practice Q33/34 | Q33 均值正确但先删 NA，不能保留全部记录数，且没输出 n；Q34 read.xlsx 非本题已加载包函数，缺 sheet/skip/na 与小写对象名 | read_csv/read_excel 导入模板；n() 与非缺失均值分母分别计算 | 高优先级 |

批改中的有效写法：Q7 全部计数并列 6，不把当前顺序判错；Q12 count 保留既有分组；Q13 默认 summarize 已解除单一分组；Q22 `cols = !country` 合法；Q27/28/29 `join_by("country_code" == "code")` 实际运行正确；Q29 full_join 调换两表顺序仍 8 行；Q32 手动处理 MISSING 后转数值对当前文件有效。Q21 的全文顺序依赖是原练习安排问题，不计为用户 geom 错误。

代码反馈（2026-09-29）：用户写出 `group_by(genre) |> count(stream_level) |> summarize(proportion = n / sum(n))`。`count()` 后已有各等级的计数；最后一步应保留每个等级一行，因此 `summarize()` 不合适。用户尚未提供 Positron 的完整错误消息，具体报错原因仍待核对。

## Practice B（2026-10-05）

已对照 f25 与 f26 Exam 1 review，编写 32 道全英文原创题，包含多选、读图、代码填空、行列数预测和简答。6 张图表已检查，数值答案已实际运行 R 核对，空白 QMD 已成功 render。

用户后续作答的首选实际文件：`[student-local working file; path removed]`。批改时先读取这份，不要读取工作区的空白副本。

答案单独保存在 `outputs/STA199_Mock_Practice_B_Answers.md`，不在用户练习文件夹和 ZIP 中。重点复练多选精度、图形选择、比例分母、mutate/summarize、无赋值不改原对象、重复键 join、筛选边界、导入和类型。验证日志：`work/practice_b_verification.json`。

## 最新 Mock Q30–32 讲解（2026-10-07）

用户要求完整解释老师新增 Q30–32，特别要 Q32 Part 4/d 的实际 R 实现。已读取最新题目 HTML、答案 HTML 和 GitHub QMD，下载老师 3 份 CSV 并实际运行。此为提供完整讲解（assisted），没有新的用户独立作答，不改变掌握状态。

- Q30：anti_join 的未匹配国家为 Great Britain、AUT、Chinese Taipei。Vault 的 NA-continent 组包含 10 个动作，显示合并均值 13.7；不是三个国家各自都为 13.7。实际 Vault 记录为 Great Britain 9 个与 AUT 1 个，Chinese Taipei 无 Vault 记录。每行是动作，因此合并平均以动作而非国家或运动员等权。
- Q31：38 × (34 − 1) = 1254 行、3 列；每行 country-year。默认 pivot_longer 保留 NA；names_transform = as.numeric 把年份列名转为 double。原始宽表不变，因为赋值给另一个对象。
- Q32b：删除 filter 后完整比值表 38 行、6 个 NA；filter 后 32 行。NA 即使 desc 排序也在末尾，原始数据最终 top5 相同，不应声称这份数据前五名必然改变。
- Q32c/d：未分组 summarize 不保留 country，且本机 dplyr 1.2.1 对一次输出 32 个比值直接报错。先 group_by(country)，每国原来一行，summarize 每组可返回一个比值；.groups = "drop" 后再全局排序与 slice_head。实际与 mutate 版本完全相同。旧版 summarize 可能允许多行并警告，不能断言所有版本都必然返回单行。
- Q32e：32 个有效比值，23 < 1，9 > 1，最小约 0.00924，最大约 2.20；单峰右偏，1 表示两年通胀率相等。ratio 比较的是通胀率，不是物价水平或累计通胀；百分比变化与百分点差不同。

可执行脚本及原始数据在 `outputs/STA199_Q30_32/`，提供给用户的桌面副本为 `[student-local working file; path removed]`。来源：`https://sta199-f26.github.io/exam-review/exam-1-review.html#question-30` 至 `#question-32`；答案 `https://sta199-f26.github.io/exam-review/exam-1-review-A.html`。下一步可让用户独立解释 32b 输出不变的原因，或把另一张每组一行的宽表改写为 grouped summarize。

## 考前一小时复习（2026-10-08，用户自述时间）

用户明确自述 join、factor 不熟，要求集中复习老师考试题型及最后 interpretation。join 继续列为 Needs practice（先前已观察重复键行数错误）；factor 新增为 Needs practice（仅用户自述，尚无本次独立作答）。提供中文概念讲解、英文作答句型和自测；仅阅读讲解不升级掌握状态。重点：按键匹配计行、anti_join 方向、NA 大洲合并组；factor 标签/levels/整数编码的区别与重排；Q32 ratio/缺失筛选/grouped summarize；读图的变量、形状、中心、离散、方向、强度、非因果表述。保留此前“双面英文 cheat sheet”偏好，本次未改变 cheat sheet 文件。

### 考前即时自测反馈

学生在上述完整讲解后作答 6 项：1 重复右键贡献3行，2 anti_join找x中无y匹配且不加y列，3 fct_rev改类别顺序，4 group_by不减少行/summarize每国一行，5 ratio0.5不表示物价减半而是通胀率低一半，6 positive已经描述方向不能选未描述方向。六项核心判断均正确；Q4补充须先按country分组且使用每组返回一个值的汇总；Q5明确是通胀率相对低50%，并非下降50个百分点。

证据类型为讲解后的即时回忆（assisted-session retrieval），不是延迟或陌生情境的独立验证。join重复键、anti_join方向与factor反转标记 Improving；factor其他部分（levels、编码、relevel/other）仍未验证。不标记全面掌握。下一步若仍有时间，可练两侧键均重复的连接和factor levels与记录数区分。
