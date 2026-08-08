# Agentic AI News Radar - 2026-07-26

## ข่าวสำคัญ

- 🧠 Hugging Face เผยแนวคิด Agentic Resource Discovery สำหรับให้ agents ค้นหา tools, skills และ MCP servers ได้จาก catalog แทนการยัดทุก tool ลง context [Hugging Face](https://huggingface.co/blog/agentic-resource-discovery-launch)
- 🔐 Hugging Face security incident note ชี้ว่า autonomous AI-driven intrusion ทำให้ฝ่ายป้องกันต้องมี AI-assisted forensics และ self-hosted model fallback [Hugging Face](https://huggingface.co/blog/security-incident-july-2026)
- 🧪 AWS AgentOps guide ย้ำ 4 เสาหลักของ production agents: governance/security, build/ops, evaluation, observability [AWS](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)

## ทำไมควรรู้

- 🧠 Tool discovery กลายเป็น bottleneck ใหม่ของ agents: ถ้า catalog ไม่ดี agent จะเลือก tool ผิดหรือต้องแบก context แพงเกินไป [Hugging Face](https://huggingface.co/blog/agentic-resource-discovery-launch)
- 🔐 เหตุการณ์ HF ชี้ว่า AI security ต้องรองรับ attacker ที่ใช้ agent swarm และ defender ที่ต้องวิเคราะห์ log ปริมาณมากเร็วพอกัน [Hugging Face](https://huggingface.co/blog/security-incident-july-2026)
- 🧪 AgentOps ไม่ใช่ observability อย่างเดียว ต้องมี versioned artifacts, policy, eval และ traceability ตั้งแต่ก่อน production [AWS](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)

## น่าลอง/น่าอ่านต่อ

- 🗂️ สร้าง internal tool catalog: description, owner, auth scope, sample task, risk class และ deprecation date [Hugging Face](https://huggingface.co/blog/agentic-resource-discovery-launch)
- 🛡️ เตรียม incident playbook สำหรับ agent-driven attack: log retention, offline model, redaction, IOC extraction และ legal handoff [Hugging Face](https://huggingface.co/blog/security-incident-july-2026)
- 📈 เพิ่ม cost/latency tracing ต่อ tool และต่อ session ไม่ใช่ดูเฉพาะ model token [AWS](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)

## เทคนิค/Skills/Workflow น่าลอง

- 🧰 สถานการณ์: มี tools เยอะ; Pattern: retrieve-then-load tools; Template: “Search catalog for tools matching goal; load top 3 with scopes; explain why each is needed”; Verify: wrong-tool eval [Hugging Face](https://huggingface.co/blog/agentic-resource-discovery-launch)
- 🔐 สถานการณ์: incident response ใช้ hosted LLM ไม่ได้เพราะ guardrails/data sensitivity; Pattern: self-hosted forensic model fallback; Caveat: ทดสอบก่อน incident จริง [Hugging Face](https://huggingface.co/blog/security-incident-july-2026)

## มุมมองสำหรับ Solution Architect

- 🧭 Agent platform ที่ scale ได้ต้องมี discovery layer, policy layer และ eval layer; framework เดียวไม่พอ [Hugging Face](https://huggingface.co/blog/agentic-resource-discovery-launch)
- 🧯 Security design ต้องถือ dataset processing, tool descriptions และ MCP endpoints เป็น attack surface หลักของ agentic systems [Hugging Face](https://huggingface.co/blog/security-incident-july-2026)

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: DevHub มีตัวอย่าง developer profile/โปรเจกต์ AI agent/LINE bot ภาษาไทย สะท้อนตลาด local builder ที่เริ่มมีผลงานจริงให้ตรวจสอบ ไม่ใช่แค่คำโฆษณา [DevHub](https://devhub.in.th/th/)
- 🇹🇭 ข้อเสนอ: เวลาคัด vendor/ฟรีแลนซ์ agent ในไทย ให้ดู repo/demo, data policy, LINE/OA integration boundary และ production monitoring ก่อนราคา [DevHub](https://devhub.in.th/th/)
