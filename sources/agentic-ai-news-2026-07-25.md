# Agentic AI News Radar - 2026-07-25

## ข่าวสำคัญ

- 🔌 MCP 2026-07-28 กำลังจะเป็นจุดเปลี่ยนสำคัญ: stateless core, extensions framework, Tasks และ auth hardening ทำให้ MCP ใกล้ production-grade integration layer มากขึ้น [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/)
- 🧰 AWS โพสต์ production blueprint สำหรับประเมิน agents ด้วย Strands + Bedrock AgentCore โดยเน้น eval pipeline และ failure detection [AWS](https://aws.amazon.com/blogs/machine-learning/category/artificial-intelligence/amazon-machine-learning/)
- 🏢 Google Cloud เผยชุด demo สำหรับ Gemini Enterprise Agent Platform พร้อมแนวทางใช้ Agents CLI/skills ใน coding agents [Google Cloud](https://cloud.google.com/blog/products/ai-machine-learning/13-demos-on-gemini-enterprise-agent-platform)

## ทำไมควรรู้

- 🔌 MCP แบบ stateless ลดภาระ sticky session/shared store แต่บังคับให้ทีมคิด explicit handles, routing headers และ auth scope ให้รัดกุม [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/)
- 🧪 Production agents ต้องวัดมากกว่า answer quality: ต้องเห็น tool success, session outcome, silent failures และ cost ต่อ interaction [AWS](https://aws.amazon.com/blogs/machine-learning/category/artificial-intelligence/amazon-machine-learning/)
- 🧭 Skills/CLI guides ของ Google Cloud สะท้อนแนวโน้มใหม่: agent platform ต้องสอน coding agent ให้เข้าใจ platform patterns ไม่ใช่แค่มี SDK [Google Cloud](https://cloud.google.com/blog/products/ai-machine-learning/13-demos-on-gemini-enterprise-agent-platform)

## น่าลอง/น่าอ่านต่อ

- 🔍 อ่าน MCP release candidate แล้วทำรายการ MCP server ภายในที่พึ่ง session state หรือ SSE transport [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/)
- 🧪 สร้าง eval table 4 ชั้น: tool call, turn, session outcome, production drift [AWS](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)
- 🧰 ทดลองทำ skill สั้น ๆ ให้ coding agent รู้ command, deploy target, rollback และ verification path ของ platform [Google Cloud](https://cloud.google.com/blog/products/ai-machine-learning/13-demos-on-gemini-enterprise-agent-platform)

## เทคนิค/Skills/Workflow น่าลอง

- 🔌 สถานการณ์: MCP server ต้อง scale; Pattern: stateless handle; Template: “create_x returns x_id; all later tools require x_id”; Verify: load test โดยปิด sticky session [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/)
- 🧪 สถานการณ์: agent ตอบถูกบางครั้งแต่พังเงียบ; Pattern: silent-failure eval; Example: seed cases ที่ health check ผ่านแต่ outcome ผิด; Caveat: ต้องมี expected business outcome [AWS](https://aws.amazon.com/blogs/machine-learning/category/artificial-intelligence/amazon-machine-learning/)

## มุมมองสำหรับ Solution Architect

- 🏛️ MCP ควรถูกวางหลัง API gateway/identity policy เหมือน integration surface จริง ไม่ใช่ config ทดลองในเครื่อง developer [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/)
- 📊 AgentOps ต้องรวม product owner, security, platform และ QA เพราะ failure ของ agent มักข้ามขอบเขตทีมเดียว [AWS](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: Techsauce รายงาน Huawei Thailand AI Ecosystem Initiative และ CodeArts Agent ในไทย เป็นสัญญาณว่า vendor ecosystem เริ่มผลัก agentic infrastructure ในตลาดองค์กรไทย [Techsauce](https://techsauce.co/news/huawei-thailand-ai-ecosystem-initiative-agentic-infrastructure)
- 🇹🇭 ข้อควรทำ: ทีมไทยควรแยก “ประกาศ vendor” ออกจาก production readiness โดยขอ reference architecture, data residency, audit log และ security boundary ก่อน pilot [Techsauce](https://techsauce.co/news/huawei-thailand-ai-ecosystem-initiative-agentic-infrastructure)
