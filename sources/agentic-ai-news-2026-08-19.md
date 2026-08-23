# Agentic AI News Radar — 2026-08-19

## ข่าวสำคัญ

🤖 GitHub Copilot for JetBrains เพิ่ม enterprise managed settings สำหรับ plugin governance, MCP server allow/deny list, OpenTelemetry และ permission modes: [GitHub Changelog](https://github.blog/changelog/2026-08-18-enterprise-managed-settings-in-github-copilot-for-jetbrains/)
🔐 GitHub Changelog วันที่ 2026-08-19 เน้น code quality และ governance: CodeQL 2.26.3 ปรับ GitHub Actions queries/JavaScript modeling และมี trend view สำหรับ organization code quality: [GitHub Changelog](https://github.blog/changelog/)
🧪 Hugging Face Papers ชู Agent Lightning v1.0 งานวิจัย Microsoft เรื่อง harnessed agentic RL สำหรับฝึก agent ที่ทำงานผ่าน harness จริง: [HF Papers](https://huggingface.co/papers/2608.17528)

## ทำไมควรรู้

🔒 Copilot ใน IDE เริ่มเข้าสู่ยุค policy-first มากขึ้น: admin ไม่ได้คุมแค่ model แต่คุม plugin source, MCP connection, telemetry collector และ bypass/autopilot permission ได้จากส่วนกลาง.
📊 Code quality trend + CodeQL update สำคัญกับ coding-agent rollout เพราะองค์กรต้องวัดผลกระทบของ agent ต่อคุณภาพและ security query coverage ไม่ใช่ดูแค่ความเร็ว PR.
🧠 Agent Lightning ตอกย้ำว่า “harness” คือส่วนหนึ่งของระบบฝึกและประเมิน agent; ถ้า train/eval ไม่เหมือน production loop ผลลัพธ์อาจหลอกทีมได้.

## น่าลอง/น่าอ่านต่อ

📘 อ่าน Copilot managed settings reference ถ้าทีมใช้ JetBrains และกำลังเปิด MCP หรือ plugin ให้ developer: [GitHub Docs](https://docs.github.com/)
🧪 อ่าน Agent Lightning ถ้าสนใจ reproducible coding-agent RL และการเก็บ request/response จาก harness จริง: [HF Papers](https://huggingface.co/papers/2608.17528)
🔎 เช็ก GitHub Changelog รายวันสำหรับ Copilot, application security และ platform governance ก่อนเปลี่ยน policy ใน org: [GitHub Changelog](https://github.blog/changelog/)

## เทคนิค/Skills/Workflow น่าลอง

🛡️ สถานการณ์: เปิด MCP ใน IDE; Pattern: central allowlist; Template: “allowedMcpServers = เฉพาะ internal/read-only tools, deniedMcpServers = unknown/public tools, log ทุก connection”; Verify: developer ต่อ server นอก allowlist ไม่ได้: [GitHub Changelog](https://github.blog/changelog/2026-08-18-enterprise-managed-settings-in-github-copilot-for-jetbrains/)
📈 สถานการณ์: วัด coding-agent rollout; Pattern: quality trend baseline; Template: “ก่อนเปิด agent 2 สัปดาห์ vs หลังเปิด agent 2 สัปดาห์: CodeQL alerts, review rework, rollback, build failure”; Caveat: แยก repo pilot กับ repo control.
🧪 สถานการณ์: eval agent ที่มี tool loop; Pattern: harness-matched eval; Template: “ให้ eval ใช้ permission, tool timeout, filesystem, retry policy เหมือน production”; Verify: trace replay ได้ครบ.

## มุมมองสำหรับ Solution Architect

🏗️ ถ้าองค์กรใช้ JetBrains ให้จัด Copilot policy เป็น architecture decision record: plugin marketplace, MCP trust boundary, telemetry endpoint, permission mode และ approval path.
🔐 ห้ามปล่อย MCP เป็น developer preference ล้วน ๆ ใน enterprise; MCP คือ integration surface ที่เชื่อมข้อมูล/เครื่องมือจริง จึงต้องเข้าระบบ allowlist, logging และ data classification.
📊 Success metric ของ coding agent ควรรวม quality/security governance เช่น CodeQL trend, policy bypass attempt, MCP connection inventory และ human-review completion.

## Thai Ecosystem Watch

🇹🇭 ข่าว/โพสต์จากชุมชนไทย: ยังไม่พบโพสต์ไทยใหม่ที่มี technical depth พอในวันนี้; ใช้บทความ DevHub เรื่อง Harness Engineering เป็น evergreen สำหรับอธิบายบทบาท humans steer / agents execute ให้ทีมไทยอ่านคู่กับต้นทาง OpenAI: [DevHub](https://devhub.in.th/en/blog/openai-harness-engineering-codex-zero-code) / [OpenAI](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
