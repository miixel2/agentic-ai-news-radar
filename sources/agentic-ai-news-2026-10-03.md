# Agentic AI News Radar — 2026-10-03

## ข่าวสำคัญ

🧪 [Microsoft/Hugging Face ThinkingBox](https://huggingface.co/blog/microsoft/thinkingbox) ชี้ pain point สำคัญของ agent evaluation: tool call success ไม่เท่ากับ outcome success ต้องตรวจ database/backend state หลัง agent ทำงาน

📦 [Hugging Face blog feed](https://huggingface.co/blog) ยังมีสัญญาณต่อเนื่องเรื่อง enterprise agents และ evaluation data เช่น AutoSynthData; วันนี้ข่าวสดไม่มาก แต่แนวทางวัดผลยังมีประโยชน์สูง

🔌 [GitHub Copilot code review API](https://github.blog/changelog/2026-10-02-copilot-code-review-api-support-and-new-default-effort-level/) จากเมื่อวานยังเป็น update ที่ควรลงมือทดลอง เพราะเชื่อม AI review เข้า internal workflow ได้ทันที

🤖 [OpenAI Agents API](https://openai.com/index/introducing-the-agents-api/) เป็น evergreen ของสัปดาห์สำหรับ sandbox + MCP + Codex harness; เหมาะใช้เป็น reference architecture เมื่อต้องคุยกับทีม platform/security

🇹🇭 ข่าว/โพสต์จากชุมชนไทย: [TechTalkThai IBM Bob self-hosted](https://www.techtalkthai.com/ibm-bob-agentic-ai-on-prem-launch/) ยังเป็นสัญญาณ local/enterprise เรื่อง agentic coding ที่ต้องคุม deployment boundary

## ทำไมควรรู้

🧭 ถ้า agent สรุปว่า “สำเร็จ” แต่ระบบปลายทางไม่เปลี่ยนจริง นั่นคือ production bug ไม่ใช่ prompt issue; ThinkingBox ทำให้ทีมต้องวัดหลักฐานหลังการกระทำ

🧪 Evaluation ของ agent ควรมีทั้ง transcript, tool logs, final state และ human adjudication ไม่เช่นนั้นจะ optimize แค่คำตอบสวย

🔐 Agentic coding ที่รันใน infra องค์กรต้องมี audit trail และ kill switch ตั้งแต่ pilot เพราะ blast radius ใหญ่กว่า autocomplete

## น่าลอง/น่าอ่านต่อ

📚 อ่าน [ThinkingBox](https://huggingface.co/blog/microsoft/thinkingbox) แล้วเลือก workflow ภายใน 1 งานที่ตรวจ final state ได้ เช่น ticket status, DB row, PR label หรือ test artifact

📚 อ่าน [GitHub Copilot code review API](https://github.blog/changelog/2026-10-02-copilot-code-review-api-support-and-new-default-effort-level/) เพื่อดูว่า request review จากระบบภายในควรใส่ effort level อย่างไร

📚 อ่าน [OpenAI Agents API](https://openai.com/index/introducing-the-agents-api/) เพื่อแยกความรับผิดชอบระหว่าง model, harness, sandbox และ tools

## เทคนิค/Skills/Workflow น่าลอง

🧾 Pattern: “Evidence-First Done” — ใช้กับ agent ที่แก้ระบบจริง; template: `Claim: ... Evidence: test output + state diff + artifact link + rollback path`; caveat: ห้ามให้ agent grade เฉพาะคำตอบตัวเอง

🧪 Pattern: “Twenty Runs Consistency” — ให้ agent ทำ task เดียว 20 ครั้งบน sandbox แยก แล้ววัด success แบบ state-based; grounded จาก [ThinkingBox](https://huggingface.co/blog/microsoft/thinkingbox)

🔐 Pattern: “Tool Side-Effect Ledger” — ทุก tool ที่เขียนข้อมูลต้อง log actor, input, target, before/after และ approval id; verify ด้วย sample audit

## มุมมองสำหรับ Solution Architect

🏛️ Agent platform ควรมี “state verifier” เป็น component แยกจาก agent เพราะ agent อาจมั่นใจผิดหรือรายงานผลเกินจริง

📊 KPI ที่ควรเพิ่มคือ `verified completion rate` และ `claim-state mismatch rate`; ถ้าค่านี้ไม่ดี อย่าเพิ่งเพิ่ม autonomy

🧯 งานที่เหมาะทดลองก่อนคือ workflow ที่ rollback ง่าย เช่น labels, draft docs, synthetic tickets และ non-prod DB

## Thai Ecosystem Watch

🇹🇭 ข่าว/โพสต์จากชุมชนไทย: [TechTalkThai IBM Bob](https://www.techtalkthai.com/ibm-bob-agentic-ai-on-prem-launch/) น่าสนใจสำหรับองค์กรไทยที่มี policy ห้าม source code ออกจาก environment

🇹🇭 ข่าว/โพสต์จากชุมชนไทย: [devhub Harness Engineering](https://devhub.in.th/th/blog/openai-harness-engineering-codex-zero-code) เหมาะใช้สอนทีม dev ไทยเรื่องการออกแบบ environment/tests/feedback ให้ coding agent ทำงานได้ดีขึ้น
