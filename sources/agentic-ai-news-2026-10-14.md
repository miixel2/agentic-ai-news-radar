# Agentic AI News Radar — 2026-10-14

## ข่าวสำคัญ

🛡️ [AWS Strands Box](https://aws.amazon.com/blogs/opensource/introducing-strands-box-ai-agent-sandboxes-powered-by-dogwood/) เปิดแนวทาง sandbox สำหรับ agent ที่ต้องอ่านไฟล์ รันคำสั่ง และเรียก API โดยวาง policy enforcement ไว้ที่ runtime ไม่ใช่หวัง prompt

🔎 [AWS AgentCore Evaluations รองรับ agent หลาย framework ผ่าน OpenTelemetry](https://aws.amazon.com/blogs/machine-learning/evaluate-any-agent-framework-with-amazon-bedrock-agentcore-evaluations/) โดย reconstruct session จาก agent, inference และ tool spans เพื่อให้ eval ไม่ผูกกับ SDK เดียว

🧰 [Google Data Agent Kit GA](https://cloud.google.com/blog/products/data-analytics/whats-new-with-google-data-cloud) เพิ่ม MCP tools และ agent skills เชื่อมบริการ Data Cloud กับ coding agents หลายตัว รวมถึง Codex และ Claude Code

## ทำไมควรรู้

🔐 Sandbox และ eval เป็น control plane คนละชั้น: sandbox จำกัดสิ่งที่ “ทำได้”; telemetry/eval พิสูจน์สิ่งที่ “ทำไปและได้ผลหรือไม่” ต้องมีทั้งคู่

📏 OpenTelemetry ช่วยลด vendor lock-in หากทีมตกลง semantic conventions, trace IDs และข้อมูลขั้นต่ำของ prompt/tool/result ตั้งแต่ต้น โดยต้อง redact ข้อมูลลับก่อน export

## น่าลอง/น่าอ่านต่อ

📚 อ่าน [AgentCore evaluation design](https://aws.amazon.com/blogs/machine-learning/evaluate-any-agent-framework-with-amazon-bedrock-agentcore-evaluations/) เพื่อออกแบบชุด trace ขั้นต่ำที่ไม่ผูก provider

📚 อ่าน [Data Agent Kit](https://cloud.google.com/blog/products/data-analytics/whats-new-with-google-data-cloud) หากทีมต้องเปิด data tools ให้ coding agent และต้องการ schema-aware workflow

## เทคนิค/Skills/Workflow น่าลอง

🛡️ Pattern: “Sandbox First, Escalate Later” — เริ่ม `network=off, secrets=off, read-only` แล้วเพิ่ม capability เฉพาะ task; verify ด้วย negative tests ที่พยายามอ่าน credential/ออก network และต้องถูกปฏิเสธ อ้างอิง [Strands Box](https://aws.amazon.com/blogs/opensource/introducing-strands-box-ai-agent-sandboxes-powered-by-dogwood/)

📈 Pattern: “Three-Span Minimum” — บันทึก `invoke_agent`, `inference`, `execute_tool` พร้อม outcome/latency/error; caveat: redact prompt และ tool output ก่อนส่ง telemetry อ้างอิง [AgentCore Evaluations](https://aws.amazon.com/blogs/machine-learning/evaluate-any-agent-framework-with-amazon-bedrock-agentcore-evaluations/)

## มุมมองสำหรับ Solution Architect

🏗️ ทำ platform contract ให้ agent ทุกตัวส่ง trace ด้วย schema เดียว แล้วค่อยอนุญาตให้ product teams เลือก framework/model ได้ภายใน guardrail เดียวกัน

🔐 MCP ที่เชื่อมข้อมูลองค์กรควรเป็น least-privilege data product: จำกัด read scope, query budget, row/column policy และ audit per tool call มากกว่าการแจก connector กว้าง ๆ

## Thai Ecosystem Watch

🇹🇭 ข่าว/โพสต์จากชุมชนไทย: [devhub Agentic Coding Tips](https://devhub.in.th/blog/agentic-coding) มีตัวอย่างแยก environment/permission สำหรับงาน agent; เป็นข้อแนะนำชุมชน ไม่ใช่มาตรฐาน security จึงควรตรวจด้วย sandbox policy ของ platform ที่ใช้จริง
