# Agentic AI News Radar - 2026-05-26

## ข่าวสำคัญ

🔹 **AgenticVBench เปิดโจทย์ eval ใหม่สำหรับ multimodal agents**: arXiv เผยแพร่ benchmark งาน post-production วิดีโอ 100 tasks จาก workflow จริงของผู้เชี่ยวชาญ ครอบคลุม text, image, audio, video, long-horizon planning และ tool use. แหล่งที่มา: [arXiv](https://arxiv.org/abs/2605.27705)

🔹 **AWS Bedrock AgentCore ยังเป็น reference สำคัญของ agent infra**: release notes เดือน พ.ค. ระบุ official MCP server สำหรับ Runtime, Memory, Browser และ Code Interpreter ช่วยให้ coding agents เรียกใช้ AgentCore ผ่าน MCP-compatible clients ได้. แหล่งที่มา: [AWS AgentCore release notes](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/release-notes.html)

🔹 **Microsoft Agent Framework May releases ย้ำทิศทาง security-first agent harness**: รุ่นเดือน พ.ค. เพิ่ม shell/Docker execution, memory/todo/session context providers, approval-mode enforcement และ prompt-injection defense. แหล่งที่มา: [Microsoft Agent Framework Releases](https://github.com/microsoft/agent-framework/releases)

🔹 **OpenAI Agents SDK ยังเป็น baseline ของ long-running harness**: ชุด SDK evolution เน้น sandbox execution, memory, MCP, skills, `AGENTS.md`, shell และ patch tools ซึ่งตรงกับ pattern ที่หลาย framework กำลังตาม. แหล่งที่มา: [OpenAI Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk)

## ทำไมควรรู้

🔹 **agent eval ต้องสะท้อน workflow จริงมากขึ้น**: AgenticVBench แสดงว่าการวัด agent จาก task สั้น ๆ ไม่พอสำหรับงาน multimodal ที่ต้องวางแผนหลายขั้นและใช้เครื่องมือหลายแบบ.

🔹 **production agent ไม่ใช่แค่ model selection**: ต้องรวม harness, sandbox, memory, identity, observability และ policy control เป็นสถาปัตยกรรมเดียว.

🔹 **MCP เริ่มเป็น operational interface**: เมื่อ AWS และ Microsoft รองรับ MCP ใน release path จริง ทีม enterprise ต้องออกแบบ MCP gateway เหมือนระบบ integration หลัก.

## น่าลอง/น่าอ่านต่อ

🔹 **อ่าน AgenticVBench เพื่อดูวิธีผสม programmatic verifier กับ expert rubric**: เหมาะสำหรับทีมที่สร้าง agent ด้านเอกสาร วิดีโอ marketing หรือ media operations. แหล่งที่มา: [arXiv](https://arxiv.org/abs/2605.27705)

🔹 **ทำ checklist readiness ของ agent infra**: runtime isolation, allowed tools, memory write policy, audit trace, human approval และ rollback path.

🔹 **เทียบ AWS AgentCore กับ stack ที่ใช้อยู่**: ดูว่าส่วนใดของ runtime/memory/browser/code execution ยังเป็น custom glue ที่เสี่ยงเกินจำเป็น. แหล่งที่มา: [AWS AgentCore release notes](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/release-notes.html)

## มุมมองสำหรับ Solution Architect

🔹 **ออกแบบ evaluation ก่อนเปิด production**: สำหรับ agent ที่ลงมือทำจริง ควรมี scenario tests, trace review, tool-call assertions และ failure taxonomy ก่อน rollout.

🔹 **แยก tool permission ตาม blast radius**: read-only, write, external action, financial/production action ควรมี policy และ approval ต่างกัน.

🔹 **เลือก framework จาก operational fit**: ถ้าองค์กรอยู่ Azure/.NET ให้ดู Microsoft Agent Framework; ถ้าอยู่ AWS ให้ดู AgentCore; ถ้าต้องการ framework-agnostic tracing/evals ให้ดู LangSmith/OpenTelemetry-style patterns.

## Thai Ecosystem Watch

🔹 **ยังไม่พบข่าวไทยสดวันที่ 26 ที่มี technical depth สูงพอ**: แหล่งไทยที่เกี่ยวข้องในช่วงนี้ยังเป็นบทความสรุปเชิง adoption มากกว่าประกาศทางเทคนิค.

🔹 **บทเรียนสำหรับทีมไทย**: ใช้วันข่าวเบาเป็นเวลาทบทวน governance ของ agent โดยเฉพาะ PDPA, log retention, prompt/tool injection และ human accountability.

🔹 **ข่าว/โพสต์จากชุมชนไทย**: ไม่พบ public Facebook/community post ที่เข้าถึงได้และมี source/code/benchmark เพียงพอสำหรับยกระดับเป็นรายการหลัก.

👥 Team Flow: 🧭 Cody 🟡✅ › 🔍 Lek 🟡✅
