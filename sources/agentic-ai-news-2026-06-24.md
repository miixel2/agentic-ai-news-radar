# Agentic AI News Radar - 2026-06-24

## ข่าวสำคัญ

🔹 **Copilot ปรับ model selection สำหรับ Free/Student plans**: แหล่งที่มา: [Primary source](https://github.blog/changelog/label/copilot/)

🔹 **Agent practice baseline**: ใช้ docs/primary sources เป็นฐานก่อนสรุปจาก blog หรือ community. แหล่งที่มา: [OpenAI Agents SDK](https://openai.github.io/openai-agents-python/)

## ทำไมควรรู้

🔹 **model availability เป็น dependency ของ workflow จึงต้องมี fallback และ acceptance test**.

## น่าลอง/น่าอ่านต่อ

🔹 **TechTalkThai มี event Reimagine ERP with AI Agent and Business Central SaaS**. แหล่งที่มา: [อ่านต่อ](https://www.techtalkthai.com/)

🔹 **ติดตาม GitHub Copilot changelog** สำหรับ coding agent, policy, budgets, review และ IDE workflow. แหล่งที่มา: [GitHub Copilot Changelog](https://github.blog/changelog/label/copilot/)

## เทคนิค/Skills/Workflow น่าลอง

🔹 **สถานการณ์: ทีมต้องทำ workflow ให้ทำซ้ำได้**; **แพตเทิร์น: model fallback test: ทดสอบ output กับ primary/secondary model และกำหนด threshold ก่อน production**; verify ด้วย artifact, test log และ human review.

🔹 **สถานการณ์: agent แตะ repo หรือระบบงานจริง**; **แพตเทิร์น: human gate ก่อน write/deploy**; ตัวอย่าง gate: intent -> diff -> tests -> risk -> approval -> execute.

## มุมมองสำหรับ Solution Architect

🔹 **ERP agent ต้องมี segregation of duties ระหว่างคนสั่ง agent คนอนุมัติ และ auditor**.

🔹 **คำแนะนำสั้น ๆ**: ทำ model/tool policy, เก็บ telemetry ตั้งแต่ pilot, และวัด outcome ต่อ workflow ไม่ใช่จำนวน prompt.

## Thai Ecosystem Watch

🔹 **ข่าว/โพสต์จากชุมชนไทย: ข่าว/โพสต์จากชุมชนไทย: งาน Reimagine ERP with AI Agent เป็น event/market signal ไม่ใช่ technical proof**. แหล่งที่มา: [TechTalkThai](https://www.techtalkthai.com/)

👥 Team Flow: 🧭 Cody 🟡✅ › 🔍 Lek 🟡🔍✅
