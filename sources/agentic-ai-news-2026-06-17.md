# Agentic AI News Radar - 2026-06-17

## ข่าวสำคัญ

🔹 **Copilot Chat auto mode เปิดให้ผู้ใช้ทุกคน และ Copilot app/Agent finder เด่นขึ้น**: แหล่งที่มา: [Primary source](https://github.blog/changelog/2026-06-17-auto-mode-in-copilot-chat-available-for-all-users/)

🔹 **Agent practice baseline**: ใช้ docs/primary sources เป็นฐานก่อนสรุปจาก blog หรือ community. แหล่งที่มา: [OpenAI Agents SDK](https://openai.github.io/openai-agents-python/)

## ทำไมควรรู้

🔹 **model routing ต้องมาคู่กับ policy routing เพื่อคุม repo ข้อมูล และ cost**.

## น่าลอง/น่าอ่านต่อ

🔹 **ติดตาม GitHub Copilot Changelog สำหรับ BYOK, Agent finder และ Copilot app GA**. แหล่งที่มา: [อ่านต่อ](https://github.blog/changelog/label/copilot/)

🔹 **ติดตาม GitHub Copilot changelog** สำหรับ coding agent, policy, budgets, review และ IDE workflow. แหล่งที่มา: [GitHub Copilot Changelog](https://github.blog/changelog/label/copilot/)

## เทคนิค/Skills/Workflow น่าลอง

🔹 **สถานการณ์: ทีมต้องทำ workflow ให้ทำซ้ำได้**; **แพตเทิร์น: model routing matrix: map task type ไปยัง allowed model, cost tier และ data policy**; verify ด้วย artifact, test log และ human review.

🔹 **สถานการณ์: agent แตะ repo หรือระบบงานจริง**; **แพตเทิร์น: human gate ก่อน write/deploy**; ตัวอย่าง gate: intent -> diff -> tests -> risk -> approval -> execute.

## มุมมองสำหรับ Solution Architect

🔹 **วาง AI assistant เป็น managed platform ที่มี catalog, telemetry และ support channel**.

🔹 **คำแนะนำสั้น ๆ**: ทำ model/tool policy, เก็บ telemetry ตั้งแต่ pilot, และวัด outcome ต่อ workflow ไม่ใช่จำนวน prompt.

## Thai Ecosystem Watch

🔹 **ข่าว/โพสต์จากชุมชนไทย: ประเด็นที่ควรติดตามในไทยคือ BYOK, compliance และ procurement สำหรับ AI coding tools**. แหล่งที่มา: [TechTalkThai](https://www.techtalkthai.com/)

👥 Team Flow: 🧭 Cody 🟡✅ › 🔍 Lek 🟡🔍✅
