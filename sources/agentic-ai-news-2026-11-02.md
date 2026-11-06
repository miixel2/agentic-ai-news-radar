# Agentic AI News Radar — 2026-11-02

## ข่าวสำคัญ

- 🧰 [OpenAI: Scaling Git at OpenAI](https://openai.com/index/scaling-git-at-openai/) อธิบายการสร้าง Pando เพื่อรองรับ concurrent Git writes ระดับ agentic coding โดยยังเข้ากันได้กับ Git protocol; นัยสำคัญคือ bottleneck ของทีมที่มี agent จำนวนมากอาจอยู่ที่ source-control plane ไม่ใช่ model

- 🤖 [GitHub Copilot model deprecations](https://github.blog/changelog/2026-10-15-upcoming-deprecation-of-selected-github-copilot-models-in-mid-november/) กำหนดเลิกบางโมเดลวันที่ 16 พ.ย. และชี้ให้ผู้ดูแลตรวจ model policy/allowlist ก่อน workflow แตก

## ทำไมควรรู้

- 🧭 “agent throughput” ต้องวัดตั้งแต่ branch, CI queue, merge conflict และ review capacity; เพิ่ม agent โดยไม่เพิ่ม guardrail อาจเพียงย้ายคอขวดไปที่ PR

## น่าลอง/น่าอ่านต่อ

- 📚 อ่าน [Copilot usage-metrics remediation](https://github.blog/changelog/2026-10-06-update-your-ide-to-restore-agent-activity-in-copilot-usage-metrics/) หากองค์กรใช้ metric เพื่อ rollout เพราะ IDE รุ่นที่ได้รับผลกระทบทำให้ attribution ของ agent activity ผิดได้

## เทคนิค/Skills/Workflow น่าลอง

- 📝 Pattern: “small branch, bounded task” — ใช้กับ coding agent: จำกัดหนึ่ง objective, test command และไฟล์ที่อนุญาตต่อ branch; merge เฉพาะเมื่อ CI+review ผ่าน เพื่อควบคุม conflict และ blast radius

- 📊 Pattern: “change-aware model inventory” — export รายชื่อโมเดลที่ policy อนุญาต, ตรวจ deprecation ทุกสัปดาห์ และ run smoke task ก่อน deadline; caveat: อย่ารอ default enablement หากองค์กรปิด global default

## มุมมองสำหรับ Solution Architect

- 🧱 แยก model abstraction จาก business workflow และบันทึก model/version ใน trace; จะทำให้สลับ model ได้โดยไม่เปลี่ยน audit trail

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: [devhub: Harness Engineering](https://devhub.in.th/th/blog/openai-harness-engineering-codex-zero-code) ช่วยถ่ายทอดแนวคิด harness ให้ developer ไทย แต่ตัวเลข productivity เป็นการเล่าเชิงกรณีศึกษา—ไม่ใช่ baseline สำหรับทีมอื่น
