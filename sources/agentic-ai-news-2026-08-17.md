# Agentic AI News Radar — 2026-08-17

## ข่าวสำคัญ

🤖 วันนี้ 2026-08-17 เป็น Monday mode และไม่พบประกาศ global primary-source ใหม่ในรอบ 24 ชั่วโมงที่สำคัญกว่ารายการปลาย ก.ค./ต้น ส.ค. จึงสรุป weekly brief โดยโฟกัสสิ่งที่เปลี่ยนจริง: MCP governance, production runtimes, coding-agent metrics และ Thai adoption signals.
🧩 MCP 2026-07-28 ยังเป็นจุดเปลี่ยนหลักของสัปดาห์: stateless core, governed extensions และ authorization hardening ทำให้ทีมควรรีวิว server/gateway/client compatibility: [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/) / [Anthropic Claude](https://claude.com/blog/bringing-mcp-2026-07-28-to-claude)
📊 GitHub Copilot metrics/cost controls ทำให้ enterprise rollout เริ่มวัด Copilot app/coding-agent usage, AI credits และ cost center ได้เป็นระบบมากขึ้น: [GitHub Changelog](https://github.blog/changelog/2026-07-28-github-copilot-app-usage-metrics-now-expand-across-report-rollups/) / [AI credit pools](https://github.blog/changelog/2026-07-02-cost-centers-now-support-included-usage-caps/)

## ทำไมควรรู้

🏗️ ทิศทางของสัปดาห์คือ “agent infra มากกว่า demo”: MCP gateway, runtime durability, managed MCP, observability, eval และ spend control กลายเป็นเกณฑ์ production readiness: [AWS AgentOps](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)
🔐 Security/gov risk ที่ควรจับตาคือ tool over-permission, OAuth/credential sprawl, indirect prompt injection, memory leakage และ write action ที่ไม่มี human gate: [Google Cloud Blog](https://cloud.google.com/blog/products/ai-machine-learning/google-managed-mcp-servers-are-available-for-everyone)
👨‍💻 สำหรับ builders, Copilot/Codex/Claude Code style workflow ควรถูกวัดด้วย outcome เช่น PR cycle time, test recovery, review rework, trace completeness ไม่ใช่แค่จำนวน prompt หรือ LOC: [GitHub Changelog](https://github.blog/changelog/2026-07-28-github-copilot-app-usage-metrics-now-expand-across-report-rollups/)

## น่าลอง/น่าอ่านต่อ

📘 OpenAI Agents SDK MCP docs มี hosted MCP, approval policy, tool caching และ tracing เป็น checklist ดีสำหรับ agent harness ที่ต้องเชื่อม tool ภายนอก: [OpenAI Agents Python](https://github.com/openai/openai-agents-python/blob/main/docs/mcp.md)
🧱 LangGraph/Deep Agents production docs ช่วยแยก thread, user, assistant, memory, execution environment, guardrails และ deployment concern ชัดเจน: [Deep Agents Production](https://docs.langchain.com/oss/python/deepagents/going-to-production)
☁️ Google ADK/MCP/A2A material ช่วยทีมที่ต้องทำ multi-agent บน cloud เข้าใจการแยก tool protocol กับ agent-to-agent protocol: [Google Cloud Blog](https://cloud.google.com/blog/topics/developers-practitioners/building-connected-agents-with-mcp-and-a2a?hl=en)

## เทคนิค/Skills/Workflow น่าลอง

🧭 สถานการณ์: ออกแบบ agent workflow ใหม่; Pattern: workflow-first, agent-second; Template: “ถ้า path คงที่ให้ใช้ workflow graph; ถ้า path ต้องตัดสินใจเองค่อยเปิด agent loop พร้อม tool budget”; Verify: trace ต้องบอกได้ว่า node/agent ไหนตัดสินใจอะไร: [LangGraph Workflows and Agents](https://docs.langchain.com/oss/python/langgraph/workflows-agents)
🔐 สถานการณ์: เปิด MCP ให้ coding agent; Pattern: read-first permission tier; Template: “phase 1 เปิด read/search/inspect, phase 2 เปิด write ผ่าน approval, phase 3 เปิด external tools เฉพาะเจ้าของข้อมูลอนุมัติ”; Verify: audit log ทุก tool call: [GitHub Docs](https://docs.github.com/en/copilot/concepts/agents/cloud-agent/mcp-and-cloud-agent)
🧪 สถานการณ์: ทำ weekly agent eval; Pattern: four-level eval; Template: tool correctness, turn quality, session outcome, system KPI; Caveat: เก็บ failed traces ที่เป็น corrective memory ไม่ใช่ยัด raw trace กลับเข้า context: [AWS AgentOps](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)
📚 สถานการณ์: มี skills/tools เยอะ; Pattern: discovery over stuffing; Template: “retrieve top capabilities by intent + publisher + tags + compliance metadata แล้วค่อยให้ model เลือก”; Verify: test query ambiguity และ false-positive tools: [Hugging Face ARD](https://huggingface.co/blog/agentic-resource-discovery-launch)

## มุมมองสำหรับ Solution Architect

🏢 Weekly takeaway: production agent architecture ควรมี 6 ชั้นขั้นต่ำ: agent harness, tool/MCP gateway, identity/policy, memory/state, observability/eval, และ cost/governance dashboard: [AWS AgentOps](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)
🛡️ ความพร้อมด้าน governance ในไทยยังเป็นช่องว่างใหญ่: ก่อนนำ AI agents เข้าองค์กรควรทำ readiness assessment ด้าน network, data, identity, logging, human approval และ vendor boundary: [Techsauce/Cisco](https://techsauce.co/ai/cisco-ai-agents-security-network-infrastructure-thailand)
📈 สิ่งที่ควรศึกษา next: MCP 2026-07-28 migration, Copilot metrics API, LangGraph durable execution, AgentOps eval levels, และ structured memory สำหรับ long-horizon tasks: [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/) / [BAIR ABBEL](https://bair.berkeley.edu/blog/2026/07/26/abbel/)

## Thai Ecosystem Watch

🇹🇭 ข่าว/โพสต์จากชุมชนไทย: Gemini Spark เข้าไทยเป็นสัญญาณว่า consumer/workspace agent แบบ background task เริ่มถูก localize ภาษาไทยและสื่อสารกับตลาดกว้าง: [Techsauce](https://techsauce.co/ai/gemini-spark-thailand-google-ai-pro)
🇹🇭 ข่าว/โพสต์จากชุมชนไทย: Huawei Thailand AI Ecosystem Initiative + CodeArts Agent เป็นสัญญาณฝั่ง vendor/platform ว่า agentic infrastructure เริ่มมี narrative เชิงประเทศและ enterprise ecosystem: [Techsauce](https://techsauce.co/news/huawei-thailand-ai-ecosystem-initiative-agentic-infrastructure)
🇹🇭 ข่าว/โพสต์จากชุมชนไทย: AppGu บน DevHub เป็นตัวอย่าง local product pattern ที่ควรจับตา: no-code agent builder, LINE integration, multi-tenant isolation และ credit billing: [DevHub](https://www.devhub.in.th/en/showcase/thanawin/appgu-ai-agent-builder/)
🇹🇭 ข่าว/โพสต์จากชุมชนไทย: บทความ Loop Engineering ภาษาไทยเหมาะใช้เป็นสื่อภายในทีมเพื่อเปลี่ยน mindset จาก prompt เดี่ยวเป็น loop, eval และ feedback workflow: [Techsauce](https://techsauce.co/ai/loop-engineering-agentic-ai-beyond-prompt-engineering)

## Weekly Agentic AI Ecosystem Brief

🗓️ What changed: MCP กลายเป็น protocol ที่เริ่มจริงจังเรื่อง stateless scale, governed extensions และ auth; Copilot เริ่มให้ metric/cost visibility ดีขึ้น; cloud vendors ดัน managed MCP/AgentOps มากขึ้น: [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/) / [GitHub Changelog](https://github.blog/changelog/2026-07-28-github-copilot-app-usage-metrics-now-expand-across-report-rollups/)
🧑‍💻 Impact for builders: งานสำคัญคือทำ agent ให้ deploy/replay/debug ได้ ไม่ใช่เพิ่ม prompt; เริ่มจาก small harness + trace + eval + read-only tools ก่อน: [LangGraph Overview](https://docs.langchain.com/oss/python/langgraph/overview)
🏭 Production readiness: ให้จัด agent, tools, prompts, memory config และ eval เป็น versioned artifacts พร้อม CI/CD และ rollback เหมือน software component: [AWS AgentOps](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)
⚠️ Security/governance risks: indirect prompt injection, overbroad MCP tools, credential delegation, cost overrun และ memory ที่มีข้อมูลภายในเป็น risk หลักของรอบนี้: [Google Cloud Blog](https://cloud.google.com/blog/products/ai-machine-learning/google-managed-mcp-servers-are-available-for-everyone)
🇹🇭 Thai relevance: ตลาดไทยมีทั้ง consumer agent, enterprise readiness gap, vendor infra push และ local LINE-agent product pattern; โอกาสอยู่ที่ governance-first implementation ไม่ใช่ demo-only adoption: [Techsauce/Cisco](https://techsauce.co/ai/cisco-ai-agents-security-network-infrastructure-thailand)
📚 Study next: MCP migration checklist, AgentOps eval design, Copilot usage metrics, LangGraph production deployment, structured memory และ human approval gates: [OpenAI Agents MCP](https://github.com/openai/openai-agents-python/blob/main/docs/mcp.md)