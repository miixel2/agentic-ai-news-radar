# Agentic AI News Radar — 2026-10-17

## ข่าวสำคัญ

🧪 [Google Cloud: four evaluation-engineering lessons](https://cloud.google.com/blog/topics/developers-practitioners/four-eval-engineering-lessons/) ชี้ว่าให้วัด trace และผลของ tool call ไม่ใช่ให้ LLM-as-a-judge ดูเพียงข้อความสรุปท้ายงาน เพราะอาจตีว่าล้มเหลวทั้งที่ agent ทำขั้นตอนสำคัญครบแล้ว

🔐 [GitHub Copilot changelog](https://github.blog/changelog/?label=copilot&opened-months=10) ระบุว่า agentic autofix สำหรับ code-scanning alerts พร้อมใช้งานทั่วไป และมีการปรับ enterprise managed-settings; ทีมที่ใช้ต้องทบทวนสิทธิ์, reviewer และการยอมรับ patch ตามนโยบายของตน

🛡️ [AWS: Trust in Depth](https://aws.amazon.com/blogs/machine-learning/trust-in-depth-giving-agents-more-autonomy-without-losing-control/) เสนอว่าการเพิ่ม autonomy ไม่ควรจบที่ human approval ทุกจุด แต่ต้องประกอบด้วย policy, evidence, sandbox และการตรวจสอบผลลัพธ์เป็นชั้น ๆ

## ทำไมควรรู้

📏 คุณภาพของ agent อยู่ที่ execution ที่ตรวจสอบย้อนกลับได้ ไม่ใช่ความลื่นไหลของ final answer; สถาปัตยกรรมที่เก็บ tool trace และ state change จึงเป็น prerequisite ของการปล่อยงานจริง

🏢 ฟีเจอร์ coding agent ที่นำ action ไปใช้กับ code/security alert ช่วยลดเวลาได้ แต่เปลี่ยน risk profile จาก “คำแนะนำ” เป็น “การเปลี่ยนระบบ” จึงต้องมี branch protection และ policy gate ที่สอดคล้องกัน

## น่าลอง/น่าอ่านต่อ

📚 อ่าน [GitHub agentic autofix GA](https://github.blog/changelog/2026-10-15-agentic-autofix-for-code-scanning-alerts-generally-available/) ควบคู่กับการกำหนด severity, ownership และ test ที่ patch ต้องผ่านก่อน merge

📚 ใช้ [AWS AgentCore evaluations](https://aws.amazon.com/blogs/machine-learning/evaluate-any-agent-framework-with-amazon-bedrock-agentcore-evaluations/) เป็นตัวอย่างการแยก evaluation ออกจาก framework แม้ระบบหลักจะไม่ได้อยู่บน AWS

## เทคนิค/Skills/Workflow น่าลอง

✅ Pattern: “Trace-first Eval” — ใช้เมื่อ agent มี tools หรือ side effects; เก็บ `intent → tool arguments → response → state delta → final claim` และ rubric ต่อขั้น; caveat: ต้อง redaction ข้อมูลลับก่อนส่งเข้า evaluator อ้างอิง [Google eval lessons](https://cloud.google.com/blog/topics/developers-practitioners/four-eval-engineering-lessons/)

🧰 Pattern: “Security-fix PR gate” — ใช้กับ agentic autofix: จำกัด scope ต่อ alert, บังคับ tests + SAST ซ้ำ, และ require code-owner approval; caveat: อย่า auto-merge เพียงเพราะ severity สูง อ้างอิง [GitHub Changelog](https://github.blog/changelog/?label=copilot&opened-months=10)

## มุมมองสำหรับ Solution Architect

🏗️ แยก control plane (identity, policy, budgets, approvals) ออกจาก execution plane (agent, tools, sandbox) และส่ง trace กลับมาเชื่อมกับ change/incident record เสมอ

🔐 เกณฑ์ go-live ควรเป็น “พิสูจน์ได้ว่าใครทำอะไรกับข้อมูล/ระบบใดและ rollback อย่างไร” ไม่ใช่เพียง benchmark ผ่านหรือ demo สำเร็จ

## Thai Ecosystem Watch

🇹🇭 ข่าว/โพสต์จากชุมชนไทย: ยังไม่พบโพสต์ใหม่ที่มีหลักฐานเชิงเทคนิคสูงพอในวันนี้ จึงไม่สรุปข่าวซ้ำ; ใช้ [devhub: Harness Engineering](https://devhub.in.th/th/blog/openai-harness-engineering-codex-zero-code) เป็นสื่อภาษาไทยประกอบการอธิบายเรื่อง repo legibility และ verification loop ได้ โดยตรวจข้ออ้างกับ [OpenAI original](https://openai.com/index/harness-engineering/) ก่อนนำไปใช้ตัดสินใจ
