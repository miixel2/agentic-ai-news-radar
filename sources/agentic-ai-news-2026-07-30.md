# Agentic AI News Radar - 2026-07-30

## ข่าวสำคัญ

- 🔐 MCP 2026-07-28 เพิ่ม authorization hardening เช่น issuer validation, client metadata documents direction และ deprecate DCR ในอนาคต [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧠 Hugging Face security incident ชี้ practical lesson ว่า defender ควรมี self-hosted model สำหรับ forensic analysis เมื่อ hosted guardrails block payload/log อันตราย [Hugging Face](https://huggingface.co/blog/security-incident-july-2026)
- 🧪 AWS AgentOps เสนอให้ version agent/tool/memory config เป็น deployable artifacts และประเมินทั้ง dev/prod [AWS](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)

## ทำไมควรรู้

- 🔐 MCP auth ไม่ใช่ optional polish; เมื่อ tools ทำ action จริง ต้องมี issuer binding, scope และ audit ที่ตรวจย้อนหลังได้ [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧯 AI-driven intrusion ทำให้ security team ต้องซ้อมทั้ง offensive speed และ defensive AI workflow [Hugging Face](https://huggingface.co/blog/security-incident-july-2026)
- 📦 Agent config ที่ไม่ versioned จะ debug/rollback ยาก โดยเฉพาะเมื่อ prompt, memory และ tools เปลี่ยนพร้อมกัน [AWS](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)

## น่าลอง/น่าอ่านต่อ

- 🛡️ ทำ MCP auth review: OAuth issuer, client identity, tool scope, secret handling, audit log, revoke path [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧪 เพิ่ม “known bad” forensic prompts/logs ใน offline security lab เพื่อทดสอบ model fallback [Hugging Face](https://huggingface.co/blog/security-incident-july-2026)
- 📦 เก็บ agent config ใน git และผูก deployment กับ commit/hash [AWS](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)

## เทคนิค/Skills/Workflow น่าลอง

- 🔐 สถานการณ์: agent เรียก tools ที่กระทบข้อมูลลูกค้า; Pattern: issuer-bound client + scoped tools; Template: “agent identity X may call tool Y only for tenant Z and purpose P”; Verify: negative auth tests [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 📦 สถานการณ์: prompt/memory drift; Pattern: config release note; ทุก deploy ต้องบันทึก prompt hash, tool schema hash, eval score และ rollback owner [AWS](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)

## มุมมองสำหรับ Solution Architect

- 🏢 Enterprise agents ต้องใช้ SDLC จริง: design review, threat model, CI eval, staged rollout, telemetry และ incident playbook [AWS](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)
- 🔐 MCP gateways ควรเป็น control plane กลางสำหรับ tool traffic ไม่ใช่ให้แต่ละทีมเปิด endpoint เองแบบกระจาย [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: Techsauce สัมภาษณ์ Cisco ระบุช่องว่างความพร้อมด้าน infrastructure/security ขององค์กรไทยต่อ AI agents จึงควรเริ่มจาก readiness assessment [Techsauce](https://techsauce.co/ai/cisco-ai-agents-security-network-infrastructure-thailand)
- 🇹🇭 ข้อเสนอ: ก่อน POC agent ในไทย ให้ทำ checklist 6 เรื่อง: data, network, identity, logging, approval, incident owner [Techsauce](https://techsauce.co/ai/cisco-ai-agents-security-network-infrastructure-thailand)
