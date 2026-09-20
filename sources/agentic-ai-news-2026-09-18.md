# Agentic AI News Radar — 2026-09-18

## ข่าวสำคัญ

🧪 GitHub Copilot weekly releases รวม code review auto-resolution, shell-tool validation, model-selection tiers, Sentry canvas ใน Copilot app และ VS Code Agent Host PR workflow: [GitHub Changelog](https://github.blog/changelog/2026-09-18-github-copilot-weekly-releases-september-14/)
⚡ AWS เปิด AgentCore Runtime รุ่นใหม่ เน้น elastic memory, cold start คงที่, scale-to-zero, session isolation และจ่ายตามการใช้งานจริง: [AWS Machine Learning Blog](https://aws.amazon.com.cdn.amazon.com/blogs/machine-learning/the-new-agentcore-runtime-elastic-optimized-and-consistently-fast-starts/)
🔐 Google Cloud เผยการใช้ agentic AI เพื่อสแกนและ patch infrastructure code ของ Google อย่างต่อเนื่อง ลด vulnerability ก่อนถึง production: [Google Cloud Blog](https://cloud.google.com/blog/topics/systems/using-ai-agents-to-secure-google-infrastructure/)
🧭 Anthropic จับมือ Accenture ทำ embedded evaluation สำหรับ frontier AI โดยให้ evaluator เข้าถึงบริบทการพัฒนา model มากกว่า external audit ทั่วไป: [Anthropic](https://www.anthropic.com/news/accenture-embedded-evaluation)

## ทำไมควรรู้

🧪 Copilot code review กำลังกลายเป็น executable reviewer ที่ใช้ shell tools และ ensemble agents ดังนั้น evidence และ sandbox policy สำคัญกว่าเดิม: [GitHub Changelog](https://github.blog/changelog/2026-09-18-github-copilot-weekly-releases-september-14/)
⚡ Runtime economics กลายเป็น competitive feature ของ agent platform เพราะ long-running/ambient agents มี memory profile และ cold-start pattern ต่างจาก chatbot: [AWS Machine Learning Blog](https://aws.amazon.com.cdn.amazon.com/blogs/machine-learning/the-new-agentcore-runtime-elastic-optimized-and-consistently-fast-starts/)
🔐 Security agents เริ่มทำงานใน SDLC ขนาดใหญ่มาก ไม่ใช่แค่ช่วย reviewer อ่าน diff; สิ่งที่สำคัญคือ precision, integration และ patch verification: [Google Cloud Blog](https://cloud.google.com/blog/topics/systems/using-ai-agents-to-secure-google-infrastructure/)
🧭 Embedded evaluation เป็นสัญญาณว่า frontier AI governance จะขยับจาก voluntary report ไปสู่ evaluator ที่อยู่ใกล้กระบวนการพัฒนามากขึ้น: [Anthropic](https://www.anthropic.com/news/accenture-embedded-evaluation)

## น่าลอง/น่าอ่านต่อ

📘 อ่าน Copilot weekly release เพื่อเลือก feature ที่ควรทดลองในทีม dev: code review, Sentry-to-fix, local Dev Containers และ Agent Host PR creation: [GitHub Changelog](https://github.blog/changelog/2026-09-18-github-copilot-weekly-releases-september-14/)
📘 อ่าน AgentCore Runtime V2 เพื่อประเมิน workload ที่ต้องการ session isolation, fast cold start และ pay-per-use memory: [AWS What's New](https://aws.amazon.com/about-aws/whats-new/2026/09/new-agentcore-runtime-generally-available/)
📘 อ่าน Google Cloud security agent article เพื่อดู agentic pattern สำหรับ scan-patch-verify ใน infrastructure code: [Google Cloud Blog](https://cloud.google.com/blog/topics/systems/using-ai-agents-to-secure-google-infrastructure/)
📘 อ่าน Anthropic embedded evaluation เพื่อเตรียมคำถาม procurement/safety review ต่อ model providers: [Anthropic](https://www.anthropic.com/news/accenture-embedded-evaluation)

## เทคนิค/Skills/Workflow น่าลอง

🧪 สถานการณ์: ให้ AI review PR; Pattern: executable review checklist; Template: `diff read -> test/build command -> finding severity -> patch suggestion -> evidence link`; Caveat: shell tools ต้องอยู่ใน sandbox/firewall: [GitHub Changelog](https://github.blog/changelog/2026-09-18-github-copilot-weekly-releases-september-14/)
⚡ สถานการณ์: agent runtime แพงเพราะ memory peak; Pattern: session memory profile; วัด peak, retained, reclaimed, cold start และ idle time; Verify: benchmark ด้วย workload จริงไม่ใช่ hello world: [AWS Machine Learning Blog](https://aws.amazon.com.cdn.amazon.com/blogs/machine-learning/the-new-agentcore-runtime-elastic-optimized-and-consistently-fast-starts/)
🔐 สถานการณ์: infra-as-code มีช่องโหว่หลุดบ่อย; Pattern: continuous agentic security loop; `scan every change -> propose patch -> run verification -> require human signoff for high risk`: [Google Cloud Blog](https://cloud.google.com/blog/topics/systems/using-ai-agents-to-secure-google-infrastructure/)
🧭 สถานการณ์: เลือก provider สำหรับงาน regulated; Pattern: embedded-eval questionnaire; ถามเรื่อง evaluator access, red-team scope, incident reporting, funding independence และ disclosure: [Anthropic](https://www.anthropic.com/news/accenture-embedded-evaluation)

## มุมมองสำหรับ Solution Architect

🏗️ Platform call: agent infrastructure ต้องรองรับ interactive, long-running และ ambient workloads คนละ profile ทั้ง latency, memory, identity และ observability: [AWS Machine Learning Blog](https://aws.amazon.com.cdn.amazon.com/blogs/machine-learning/the-new-agentcore-runtime-elastic-optimized-and-consistently-fast-starts/)
🔐 Security posture: นำ agent มาใช้ใน security pipeline ได้ แต่ต้องวัด false positives, patch correctness และ blast radius ของ automated changes: [Google Cloud Blog](https://cloud.google.com/blog/topics/systems/using-ai-agents-to-secure-google-infrastructure/)
🧪 Dev workflow: Sentry-to-Copilot และ Agent Host PR creation ทำให้ incident-to-fix loop สั้นลง แต่ต้องมี reviewer gate และ rollback plan: [GitHub Changelog](https://github.blog/changelog/2026-09-18-github-copilot-weekly-releases-september-14/)
🧭 Governance: สำหรับ frontier AI vendors ให้เพิ่ม embedded evaluation และ misuse monitoring เป็นหัวข้อ due diligence: [Anthropic](https://www.anthropic.com/news/accenture-embedded-evaluation)

## Thai Ecosystem Watch

🇹🇭 ข่าว/โพสต์จากชุมชนไทย: Techsauce รายงาน production-agent discussion จาก Wonderful Thailand ซึ่งเชื่อมกับข่าววันนี้โดยตรง: scale ได้เมื่อมี guardrails, evaluation และ workflow measurement: [Techsauce](https://techsauce.co/en/ai/wonderful-ai-agent-pilot-to-production-en)
🇹🇭 ข่าว/โพสต์จากชุมชนไทย: DevHub บทความ Harness Engineering ใช้สื่อสารกับทีมไทยได้ว่า “AI ทำงานได้ end-to-end” ต้องแลกกับ environment, logs, metrics และ cleanup agents: [DevHub](https://devhub.in.th/th/blog/openai-harness-engineering-codex-zero-code)
🇹🇭 ข้อสรุปสำหรับทีมไทย: ถ้าเริ่มใช้ agent ทำ security/code review ให้เริ่มจาก non-production repo และบังคับ evidence link ทุก finding ก่อนขยายสู่ระบบ critical: [Google Cloud Blog](https://cloud.google.com/blog/topics/systems/using-ai-agents-to-secure-google-infrastructure/)

## Research Digest

📚 When Agents Slow Down: Core idea คือวัด test-time strategy ด้วย Elo-per-token; Why matters เพราะ long run ไม่ได้คุ้มเสมอ; Practical takeaway คือทดลอง parallel short sessions; Read priority: สูงสำหรับทีมทำ coding/research agents: [Hugging Face Papers](https://huggingface.co/papers/2609.15309)
📚 RSIAgent: Core idea คือ autonomous exploration + verifier memory โดยไม่ fine-tune; Why matters เพราะ environment-specific memory เพิ่ม performance ได้; Practical takeaway คือ memory ต้องผ่าน verification ก่อน reuse; Read priority: สูงสำหรับทีมทำ tool-heavy agents: [Hugging Face Papers](https://huggingface.co/papers/2609.15364)
📚 Agora: Core idea คือใช้ Git เป็น shared append-only memory สำหรับ collective AutoResearch; Why matters เพราะหลาย agent มักค้นซ้ำ; Practical takeaway คือทำ claim/result เป็น commit ที่ rerun ได้; Read priority: กลาง-สูงสำหรับทีมวิจัยอัตโนมัติ: [Hugging Face Papers](https://huggingface.co/papers/2609.18094)
📚 PlannerForge: Core idea คือ LLM agents ช่วย scenario-based testing ของ autonomous driving ตั้งแต่ generate ถึง assess; Why matters เพราะ agent orchestration เข้า safety-critical testing; Practical takeaway คือแยก stage และวัดแต่ละ stage; Read priority: กลางสำหรับทีม domain testing: [Hugging Face Papers](https://huggingface.co/papers/2609.08965)
