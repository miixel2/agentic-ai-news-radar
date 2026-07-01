# Agentic AI News Radar - 2026-06-18

## ข่าวสำคัญ

🔹 **Copilot code review รองรับ AGENTS.md และปรับ UI**: แหล่งที่มา: [Primary source](https://github.blog/changelog/2026-06-18-copilot-code-review-agents-md-support-and-ui-improvements/)

🔹 **Agent practice baseline**: ใช้ docs/primary sources เป็นฐานก่อนสรุปจาก blog หรือ community. แหล่งที่มา: [OpenAI Agents SDK](https://openai.github.io/openai-agents-python/)

## ทำไมควรรู้

🔹 **AGENTS.md กลายเป็น control surface ของ repo ถ้า instruction สับสน AI review จะสับสนตาม**.

## น่าลอง/น่าอ่านต่อ

🔹 **อ่าน OpenAI Agents SDK tracing/session เพื่อเทียบกับ audit trail ใน coding workflow**. แหล่งที่มา: [อ่านต่อ](https://openai.github.io/openai-agents-python/)

🔹 **ติดตาม GitHub Copilot changelog** สำหรับ coding agent, policy, budgets, review และ IDE workflow. แหล่งที่มา: [GitHub Copilot Changelog](https://github.blog/changelog/label/copilot/)

## เทคนิค/Skills/Workflow น่าลอง

🔹 **สถานการณ์: ทีมต้องทำ workflow ให้ทำซ้ำได้**; **แพตเทิร์น: review contract in AGENTS.md: prioritize bugs, cite files, run tests, do not rewrite unrelated code**; verify ด้วย artifact, test log และ human review.

🔹 **สถานการณ์: agent แตะ repo หรือระบบงานจริง**; **แพตเทิร์น: human gate ก่อน write/deploy**; ตัวอย่าง gate: intent -> diff -> tests -> risk -> approval -> execute.

## มุมมองสำหรับ Solution Architect

🔹 **ทีม platform ควรมี AGENTS.md template กลาง แล้วให้ repo override เฉพาะ test/domain risk**.

🔹 **คำแนะนำสั้น ๆ**: ทำ model/tool policy, เก็บ telemetry ตั้งแต่ pilot, และวัด outcome ต่อ workflow ไม่ใช่จำนวน prompt.

## Thai Ecosystem Watch

🔹 **ข่าว/โพสต์จากชุมชนไทย: AGENTS.md เหมาะกับทีมไทยเพราะช่วยลด tribal knowledge ใน repo**. แหล่งที่มา: [TechTalkThai](https://www.techtalkthai.com/)

👥 Team Flow: 🧭 Cody 🟡✅ › 🔍 Lek 🟡🔍✅
