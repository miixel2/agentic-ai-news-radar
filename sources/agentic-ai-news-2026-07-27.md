# Agentic AI News Radar - 2026-07-27

## ข่าวสำคัญ

- 🔌 สัปดาห์นี้ควรจับตา MCP 2026-07-28 final: stateless protocol, routing headers, cacheable lists และ auth hardening จะกระทบ MCP server/client ที่สร้างไว้ก่อนหน้า [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/)
- 🧪 AWS เผยแนวทาง eval production agents จากเคส Strands + AgentCore โดยเน้นลดผลลัพธ์ผิดและตรวจพบปัญหาเร็วขึ้น [AWS](https://aws.amazon.com/blogs/machine-learning/category/artificial-intelligence/amazon-machine-learning/)
- 🏢 Google Cloud Agent Platform demos ให้ pattern สำหรับ ADK, Agent Platform และ skills ที่ coding agents ใช้เรียน platform ได้ [Google Cloud](https://cloud.google.com/blog/products/ai-machine-learning/13-demos-on-gemini-enterprise-agent-platform)

## ทำไมควรรู้

- 🔌 MCP final จะทำให้ serverless/edge deployment ง่ายขึ้น แต่ breaking changes ต้องวาง migration plan [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/)
- 🧪 Eval ของ agents ต้องเชื่อม business outcome ไม่ใช่ถามว่า model ตอบดูดีไหม [AWS](https://aws.amazon.com/blogs/machine-learning/category/artificial-intelligence/amazon-machine-learning/)
- 🧰 Skills กลายเป็นวิธี package operating knowledge ให้ agent ทำงานใน stack เฉพาะได้เร็วขึ้น [Google Cloud](https://cloud.google.com/blog/products/ai-machine-learning/13-demos-on-gemini-enterprise-agent-platform)

## น่าลอง/น่าอ่านต่อ

- 🔍 ทำ MCP migration checklist: protocol version, SSE, session id, auth, cache hints, Tasks, SDK version [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/)
- 🧪 เลือก workflow จริง 10 เคสแล้วสร้าง expected outcome + acceptable evidence สำหรับ eval [AWS](https://aws.amazon.com/blogs/machine-learning/category/artificial-intelligence/amazon-machine-learning/)
- 🧭 สร้าง platform skill 1 ไฟล์สำหรับ “how to build, test, deploy, observe” ใน repo ที่ใช้บ่อย [Google Cloud](https://cloud.google.com/blog/products/ai-machine-learning/13-demos-on-gemini-enterprise-agent-platform)

## เทคนิค/Skills/Workflow น่าลอง

- 🔌 สถานการณ์: migration MCP; Pattern: dual-protocol compatibility test; Example: run old client against `2025-11-25`, new client against `2026-07-28`; Caveat: log auth issuer mismatch [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/)
- 🧪 สถานการณ์: weekly agent QA; Pattern: regression pack from real tickets; Template: input, tool permissions, expected evidence, fail condition, owner [AWS](https://aws.amazon.com/blogs/machine-learning/category/artificial-intelligence/amazon-machine-learning/)

## มุมมองสำหรับ Solution Architect

- 🏗️ ให้ถือ week นี้เป็น “agent infrastructure hygiene week”: upgrade SDKs, map tools, review auth และเพิ่ม eval ที่จับ outcome [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/)
- 📌 Skills ควรเล็กและ versioned เหมือน runbook; ถ้ายาวเกินไป agent จะอ่านไม่ครบหรือใช้ผิดบริบท [Google Cloud](https://cloud.google.com/blog/products/ai-machine-learning/13-demos-on-gemini-enterprise-agent-platform)

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: Techsauce รายงาน Huawei Thailand Digital & AI Summit 2026 พร้อมประเด็น AI infrastructure, trustworthy AI และ data center energy ซึ่งเกี่ยวกับ agent deployment ในองค์กรไทย [Techsauce](https://techsauce.co/news/huawei-thailand-ai-ecosystem-initiative-agentic-infrastructure)
- 🇹🇭 ข้อเสนอ: องค์กรไทยที่เริ่ม agent pilot ควรตั้ง owner ด้าน security/network ตั้งแต่วันแรก ไม่ใช่หลัง POC ผ่านแล้ว [Techsauce](https://techsauce.co/ai/cisco-ai-agents-security-network-infrastructure-thailand)

## Weekly Agentic AI Brief

- 🗓️ What changed: สัปดาห์นี้ ecosystem หมุนรอบ production readiness: MCP final, AgentOps eval, tool/skill discovery และ enterprise governance [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/)
- 🧱 Impact: Builders ต้องลด hidden state, ทำ tool catalog, เพิ่ม eval และเตรียม auth/routing สำหรับ MCP [Hugging Face](https://huggingface.co/blog/agentic-resource-discovery-launch)
- 🛡️ Risk: agent-driven security incident ทำให้ต้องมี guardrails + forensic capability ที่ใช้งานได้จริงในข้อมูลอ่อนไหว [Hugging Face](https://huggingface.co/blog/security-incident-july-2026)
- 🇹🇭 Thai relevance: ตลาดไทยเริ่มคุยเรื่อง agentic infrastructure แต่ควรถามหา audit, data boundary และ operations model ก่อนซื้อ [Techsauce](https://techsauce.co/news/huawei-thailand-ai-ecosystem-initiative-agentic-infrastructure)
