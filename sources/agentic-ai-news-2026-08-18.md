# Agentic AI News Radar — 2026-08-18

## ข่าวสำคัญ

🤖 วันนี้ 2026-08-18 ไม่พบประกาศ primary-source ใหม่ในรอบ 24-72 ชั่วโมงที่แรงพอจะกลบชุดประกาศปลาย ก.ค.; โฟกัสวันนี้จึงเป็น “เตรียม production agent stack” จากแหล่งล่าสุดที่ยัง actionable.
🧩 MCP 2026-07-28 เป็นฐานสำคัญของ agent tooling รอบนี้: protocol core กลายเป็น stateless, มี header routing, cacheable list results, authorization hardening และ Tasks extension: [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
👨‍💻 GitHub Copilot code review เปิด agent skills และ MCP เป็น GA ทำให้ทีมฝังมาตรฐาน repo, context ภายใน และ read-only external context เข้า review workflow ได้เป็นระบบขึ้น: [GitHub Changelog](https://github.blog/changelog/2026-07-29-copilot-code-review-agent-skills-and-mcp-now-generally-available/)
🏢 Microsoft Agent Framework วางภาพใหม่ของ agents, harnesses และ graph workflows โดยรวมแนว AutoGen/Semantic Kernel เข้ากับ session, middleware, MCP clients, telemetry และ human-in-the-loop: [Microsoft Learn](https://learn.microsoft.com/en-us/agent-framework/overview/)

## ทำไมควรรู้

🔐 MCP แบบ stateless ไม่ได้แปลว่า risk หายไป; identity, issuer validation, credential boundary และ audit ต่อ request สำคัญกว่าเดิม เพราะทุก tool call ต้องอธิบายได้ว่าใคร/agent ไหนทำอะไร: [MCP Spec](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
📊 GitHub จะเปิด default model enablement policy ให้ Copilot Business/Enterprise มีผลวันที่ 2026-08-26; admin ควรรีวิวก่อน model ใหม่ที่ GA จะเปิดตาม policy อัตโนมัติ: [GitHub Changelog](https://github.blog/changelog/2026-07-29-default-model-enablement-for-copilot-business-and-enterprise/)
⚙️ OpenAI อธิบาย agentic harness efficiency ว่าลด context bloat, tool overhead และ repeated work สำคัญเท่าการทำ model ให้เร็วขึ้น โดยเฉพาะงาน Codex/ChatGPT Work ที่มีหลาย tool iteration: [OpenAI](https://openai.com/index/gpt-5-6-frontier-intelligence-efficiency/)
☁️ AWS และ Google Cloud ชี้ไปทิศเดียวกัน: production agents ต้องมี runtime durability, observability, identity, memory/state และ governance layer ไม่ใช่แค่ prompt + tool list: [AWS AgentCore Observability](https://aws.amazon.com/blogs/machine-learning/optimizing-production-agents-with-amazon-bedrock-agentcore-observability/) / [Google Agent Platform](https://cloud.google.com/blog/products/ai-machine-learning/whats-new-in-gemini-enterprise-agent-platform)

## น่าลอง/น่าอ่านต่อ

📘 อ่าน Microsoft Agent Framework overview ถ้าทีมใช้ .NET/Python/Go และต้องตัดสินใจว่า task ควรเป็น agent, harness หรือ workflow graph: [Microsoft Learn](https://learn.microsoft.com/en-us/agent-framework/overview/)
🧪 อ่าน LangChain เรื่อง governed agents และ eval engineering เพื่อออกแบบ cost/control/compliance loop ก่อนเปิด agent ให้ผู้ใช้จริง: [LangChain Blog](https://www.langchain.com/blog)
🧠 อ่าน BAIR ABBEL สำหรับแนวคิด belief state แทนการสรุป history ยาว ๆ ใน long-horizon interaction; เหมาะกับ memory design ที่ต้องประหยัด context: [BAIR Blog](https://bair.berkeley.edu/blog/future/)
🛠️ อ่าน AWS AgentCore Gateway MCP 2026-07-28 ถ้าต้องดู migration path ระหว่าง protocol version เก่า/ใหม่โดยไม่ทำ client เดิมพัง: [AWS Blog](https://aws.amazon.com/blogs/machine-learning/how-agentcore-gateway-supports-the-mcp-2026-07-28-spec/)

## เทคนิค/Skills/Workflow น่าลอง

🧭 สถานการณ์: มีงานหลายขั้นที่บางส่วน deterministic; Pattern: “workflow ก่อน agent”; Template: “Step graph สำหรับ path คงที่, agent เฉพาะจุดที่ต้องเลือก tool/plan เอง, human approval ก่อน write action”; Verify: trace ต้อง replay ได้: [Microsoft Agent Framework](https://learn.microsoft.com/en-us/agent-framework/overview/)
🔐 สถานการณ์: เปิด MCP ให้ coding/review agent; Pattern: per-request trust envelope; Template: “tool name + caller identity + issuer + scope + action risk + audit id”; Caveat: stateless server ยังต้องมี application-level state handle ที่ตรวจสิทธิ์ทุกครั้ง: [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
📦 สถานการณ์: เขียน agent skill ให้ทีมใช้ซ้ำ; Pattern: progressive disclosure; Template: “SKILL.md เป็นสารบัญสั้น, ลิงก์ไป docs/checklists/examples เฉพาะงาน, ใส่ acceptance criteria และ commands”; Verify: agent หยิบ skill ถูกใน 5-10 งานตัวอย่าง: [GitHub Changelog](https://github.blog/changelog/2026-07-29-copilot-code-review-agent-skills-and-mcp-now-generally-available/)
📉 สถานการณ์: agent แพงหรือช้า; Pattern: cache-aware context; Template: “แยก stable instructions, tool schemas, repo conventions ให้อยู่ prefix คงที่; ส่งเฉพาะ delta/trace ที่จำเป็น”; Verify: วัด token, latency, tool-call count ก่อน/หลัง: [OpenAI](https://openai.com/index/gpt-5-6-frontier-intelligence-efficiency/)

## มุมมองสำหรับ Solution Architect

🏗️ Architecture baseline ควรมีอย่างน้อย 6 ชั้น: model/router, harness/runtime, tool/MCP gateway, identity/policy, memory/state, observability/eval/cost dashboard: [AWS AgentOps](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)
🧯 Governance ที่ควรทำทันทีคือ inventory ของ agents/tools/models, permission tier, approval matrix, data boundary, logging schema และ rollback/recovery path สำหรับ action ที่ agent ทำผิด.
👥 สำหรับองค์กรที่ใช้ Copilot Enterprise ให้รีวิว model policy ก่อน 2026-08-26 และเริ่มทดลอง `.github/skills/*/SKILL.md` กับ code review rules ที่วัดผลได้ เช่น security checklist, migration rule, API contract rule: [GitHub Changelog](https://github.blog/changelog/2026-07-29-default-model-enablement-for-copilot-business-and-enterprise/)

## Thai Ecosystem Watch

🇹🇭 ข่าว/โพสต์จากชุมชนไทย: Gemini Spark เข้าไทยสะท้อนว่าผู้ใช้ไทยจะเริ่มคุ้นกับ background personal agents, scheduled tasks และ reusable skills มากขึ้น แต่ action สำคัญยังต้องมี confirmation: [Techsauce](https://techsauce.co/ai/gemini-spark-thailand-google-ai-pro)
🇹🇭 ข่าว/โพสต์จากชุมชนไทย: บทสัมภาษณ์ Cisco ชี้ช่องว่าง readiness ขององค์กรไทยด้าน AI agents โดยเน้น infrastructure, security, network และ observability เป็นตัวคุมการ scale: [Techsauce/Cisco](https://techsauce.co/ai/cisco-ai-agents-security-network-infrastructure-thailand)
🇹🇭 ข่าว/โพสต์จากชุมชนไทย: DevHub มีตัวอย่าง AppGu no-code AI agent builder ที่เชื่อม LINE bot, multi-tenant workspace และ credit billing เหมาะดูเป็น local SaaS pattern: [DevHub](https://www.devhub.in.th/en/showcase/thanawin/appgu-ai-agent-builder/)
🇹🇭 ข่าว/โพสต์จากชุมชนไทย: บทความ Harness Engineering ภาษาไทยของ DevHub ใช้เป็นสื่อทีมได้ดี แต่ควรอ่านคู่กับต้นทาง OpenAI เพื่อแยก insight เชิง workflow ออกจากตัวเลข/claim ที่ต้องตรวจสอบ: [DevHub](https://devhub.in.th/en/blog/openai-harness-engineering-codex-zero-code) / [OpenAI Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
