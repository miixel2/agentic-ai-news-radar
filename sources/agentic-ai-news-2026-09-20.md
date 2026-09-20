# Agentic AI News Radar — 2026-09-20

## ข่าวสำคัญ

🧭 สัปดาห์นี้ signal ใหญ่คือ agent platforms แข่งกันที่ harness, runtime, observability, evaluation, tool governance และ cost controls มากกว่าการประกาศ model เดี่ยว: [OpenAI](https://openai.com/index/introducing-the-agents-api/)
🧪 GitHub Copilot weekly releases ล่าสุดรวม model routing tiers, code review ที่ใช้ shell tools, Sentry canvas และ VS Code Agents workflow updates: [GitHub Changelog](https://github.blog/changelog/2026-09-18-github-copilot-weekly-releases-september-14/)
⚡ AWS AgentCore Runtime รุ่นใหม่ชู elastic memory และ cold start คงที่ เหมาะกับ long-running/ambient agents ที่ session profile ไม่เหมือน chatbot: [AWS Machine Learning Blog](https://aws.amazon.com.cdn.amazon.com/blogs/machine-learning/the-new-agentcore-runtime-elastic-optimized-and-consistently-fast-starts/)
🔐 Google Cloud และ Anthropic ต่างส่งสัญญาณด้าน safety/security: agentic AI สำหรับ secure infrastructure code และ embedded evaluation สำหรับ frontier labs: [Google Cloud Blog](https://cloud.google.com/blog/topics/systems/using-ai-agents-to-secure-google-infrastructure/) / [Anthropic](https://www.anthropic.com/news/accenture-embedded-evaluation)

## ทำไมควรรู้

🧭 Builder ที่ยังมอง agent เป็น “prompt + tools” จะพลาดชั้นสำคัญคือ harness/runtime/eval ที่กำหนด reliability และ cost ใน production: [OpenAI](https://openai.com/index/introducing-the-agents-api/)
🧪 Coding agents กำลังเข้าใกล้ SDLC จริงมากขึ้น ตั้งแต่ incident context, review, shell validation, PR creation ไปจนถึง metrics ของ skills/MCP/plugins: [GitHub Changelog](https://github.blog/changelog/2026-09-18-github-copilot-weekly-releases-september-14/)
⚡ Runtime cost/latency จะเป็น constraint หลักเมื่อ agent ทำงานหลายชั่วโมงหรือถูก trigger อัตโนมัติจำนวนมาก: [AWS Machine Learning Blog](https://aws.amazon.com.cdn.amazon.com/blogs/machine-learning/the-new-agentcore-runtime-elastic-optimized-and-consistently-fast-starts/)
🔐 Security posture ต้องครอบคลุมทั้ง agent ที่ช่วยป้องกันระบบ และ agent/model ที่อาจถูก misuse หรือ distill โดยผู้ไม่หวังดี: [Anthropic](https://www.anthropic.com/threat-intelligence-report-september-2026)

## น่าลอง/น่าอ่านต่อ

📘 OpenAI Agents API: อ่านเพื่อเข้าใจ managed Codex harness, MCP tools, hosted/partner sandboxes, context compaction และ subagents: [OpenAI](https://openai.com/index/introducing-the-agents-api/)
📘 GitHub Copilot weekly release: ใช้เลือก experiment สำหรับทีม dev เช่น Sentry canvas, Agent Host PR creation และ code review shell validation: [GitHub Changelog](https://github.blog/changelog/2026-09-18-github-copilot-weekly-releases-september-14/)
📘 AWS AgentCore Runtime: ใช้ประเมิน production runtime สำหรับ agents ที่ต้อง scale-to-zero และรัน session ยาว: [AWS What's New](https://aws.amazon.com/about-aws/whats-new/2026/09/new-agentcore-runtime-generally-available/)
📘 Hugging Face Papers: อ่าน RSIAgent, When Agents Slow Down และ Agora เพื่อจับ research theme เรื่อง memory, test-time compute และ shared research state: [Hugging Face Papers](https://huggingface.co/papers/2609.15364)

## เทคนิค/Skills/Workflow น่าลอง

🧭 สถานการณ์: จะสร้าง internal agent platform; Pattern: platform capability map; Template: `harness | sandbox | tool registry | identity | memory | eval | observability | cost control | human gate`; Verify: แต่ละ capability มี owner และ evidence: [OpenAI](https://openai.com/index/introducing-the-agents-api/)
🧪 สถานการณ์: ใช้ Copilot/agent ใน SDLC; Pattern: PR evidence bundle; ให้ agent แนบ commands, outputs, changed files, risk notes และ reviewer checklist ก่อนขอ merge: [GitHub Changelog](https://github.blog/changelog/2026-09-18-github-copilot-weekly-releases-september-14/)
⚡ สถานการณ์: เลือก runtime; Pattern: workload profile benchmark; วัด cold start, memory reclaim, session duration, tool latency และ cost ต่อ successful task: [AWS Machine Learning Blog](https://aws.amazon.com.cdn.amazon.com/blogs/machine-learning/the-new-agentcore-runtime-elastic-optimized-and-consistently-fast-starts/)
🔐 สถานการณ์: เปิด agent ให้แก้ infra/security code; Pattern: secure agent loop; `detect -> propose -> patch -> verify -> human approve -> monitor`; Caveat: automated patch ต้องมี rollback: [Google Cloud Blog](https://cloud.google.com/blog/topics/systems/using-ai-agents-to-secure-google-infrastructure/)

## มุมมองสำหรับ Solution Architect

🏗️ Reference architecture: วาง agent platform เป็น control plane ที่มี tool gateway, policy, eval, telemetry, memory และ artifact store ไม่ใช่แค่เรียก model API: [AWS Machine Learning Blog](https://aws.amazon.com/blogs/machine-learning/a-shared-agentic-platform-for-wood-mackenzie-on-amazon-bedrock-agentcore/)
💰 FinOps: รวม model routing tiers, budget request flow, token usage และ runtime memory usage ใน dashboard เดียวเพื่อคุม cost ตาม value: [GitHub Changelog](https://github.blog/changelog/2026-09-14-configure-cost-and-quality-in-copilot-auto-model-selection/)
🔐 Governance: Vendor review ต้องถามเรื่อง misuse detection, embedded/external evaluation, data boundary, sandbox isolation และ incident disclosure: [Anthropic](https://www.anthropic.com/news/accenture-embedded-evaluation)
🧭 Delivery advice: เริ่มจาก 1-2 workflow ที่วัดผลได้ เช่น PR review, incident-to-fix, support triage หรือ report generation แล้วค่อยขยาย tool registry: [Techsauce](https://techsauce.co/en/ai/wonderful-ai-agent-pilot-to-production-en)

## Thai Ecosystem Watch

🇹🇭 ข่าว/โพสต์จากชุมชนไทย: Techsauce รายงาน Wonderful Thailand เรื่อง production AI agents เป็น local signal ที่ดีว่าองค์กรไทยเริ่มสนใจการ scale จาก pilot ด้วย governance และ measurement: [Techsauce](https://techsauce.co/en/ai/wonderful-ai-agent-pilot-to-production-en)
🇹🇭 ข่าว/โพสต์จากชุมชนไทย: OpenAI-Fellow Intelligence partnership ในไทยเป็นสัญญาณว่า enterprise adoption จะต้องการ partner ที่ช่วยทั้ง licensing, workflow design, training และ change management: [Techsauce](https://techsauce.co/en/news/openai-fellow-intelligence-thailand-partnership)
🇹🇭 ข่าว/โพสต์จากชุมชนไทย: DevHub มีบทความ Harness Engineering ภาษาไทยที่เหมาะกับการ onboard ทีม dev ให้เข้าใจ agent legibility, docs-as-context และ cleanup loops: [DevHub](https://devhub.in.th/th/blog/openai-harness-engineering-codex-zero-code)
🇹🇭 ข้อสรุปสำหรับทีมไทย: โฟกัสไตรมาสถัดไปควรเป็น “agent operating model” ภาษาไทย: ใครขอใช้, ใครอนุมัติ, agent ทำอะไรได้เอง, evidence เก็บที่ไหน และหยุดอย่างไรเมื่อผิดพลาด: [Techsauce](https://techsauce.co/en/ai/wonderful-ai-agent-pilot-to-production-en)
