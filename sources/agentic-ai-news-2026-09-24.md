# Agentic AI News Radar — 2026-09-24

## ข่าวสำคัญ

🧭 ภาพรวม 24-72 ชั่วโมงล่าสุดชัดว่า agentic AI แข่งกันที่ production controls: sandbox, telemetry, skill eval, review policy, model routing และ data boundary: [GitHub Changelog](https://github.blog/changelog/label/copilot/)
🔐 GitHub Copilot app มีทั้ง OpenTelemetry และ local sandboxing ในรอบเดียวกัน ทำให้ enterprise coding agent เริ่มมี control plane ที่ใกล้ production มากขึ้น: [GitHub OTel](https://github.blog/changelog/2026-09-22-opentelemetry-in-the-github-copilot-app/) / [GitHub Sandboxing](https://github.blog/changelog/2026-09-23-local-sandboxing-in-the-github-copilot-app/)
🧪 AWS skill-eval guide ให้กรอบประเมิน agent skills จาก recorded trajectory และ OpenTelemetry traces เหมาะกับทีมที่เริ่มมี reusable skills หลายตัว: [AWS Machine Learning Blog](https://aws.amazon.com/blogs/machine-learning/evaluate-skill-equipped-agents-with-strands-evals-and-amazon-bedrock-agentcore/)
📄 Paper ใหม่ “The Tasteful Agent” เสนอ Taste-Bench สำหรับวัดคุณภาพการตัดสินใจระหว่างทางของ long-horizon agents ไม่ใช่แค่ final success: [Hugging Face Papers](https://huggingface.co/papers/2609.25804)

## ทำไมควรรู้

🧭 Agent ที่ใช้งานจริงจะล้มเพราะ control gaps ก่อนล้มเพราะ model ไม่ฉลาดพอ: sandbox/trace/eval/policy จึงเป็น requirement ไม่ใช่ nice-to-have: [GitHub Changelog](https://github.blog/changelog/label/copilot/)
🔐 Telemetry + sandbox เป็นคู่สำคัญ: sandbox ลด blast radius ส่วน telemetry ทำให้รู้ว่า agent ทำอะไรและทำไมเมื่อ behavior ผิดคาด: [GitHub OTel](https://github.blog/changelog/2026-09-22-opentelemetry-in-the-github-copilot-app/)
🧪 Skill evaluation ช่วยแยก failure mode ที่ต่างกันมาก: เลือก skill ผิด, เลือกถูกแต่ทำไม่ครบ, หรือ final answer ดูดีแต่ process ไม่ผ่าน compliance: [AWS Machine Learning Blog](https://aws.amazon.com/blogs/machine-learning/evaluate-skill-equipped-agents-with-strands-evals-and-amazon-bedrock-agentcore/)
📄 Taste-Bench ชี้ว่าความสามารถสำคัญของ agent ระยะยาวคือ “เลือกทางเดินที่ดี” เช่น hypothesis, implementation path และ verification step: [Hugging Face Papers](https://huggingface.co/papers/2609.25804)

## น่าลอง/น่าอ่านต่อ

📘 GitHub Copilot changelog label: ใช้เป็น watchlist รายวันสำหรับ workplace coding agents, policy, observability และ model availability: [GitHub Changelog](https://github.blog/changelog/label/copilot/)
📘 AWS skill-eval guide: ใช้เป็น template สำหรับ regression gate ของ skills ใน Codex/Claude/Gemini/OpenHands-style harnesses: [AWS Machine Learning Blog](https://aws.amazon.com/blogs/machine-learning/evaluate-skill-equipped-agents-with-strands-evals-and-amazon-bedrock-agentcore/)
📘 The Tasteful Agent: อ่านเพื่อออกแบบ eval ที่จับ decision fork ระหว่างทางของ agent ไม่ใช่แค่ score หลังจบงาน: [Hugging Face Papers](https://huggingface.co/papers/2609.25804)
📘 OpenAI skill/prompt guide: ใช้ audit AGENTS.md และ skills ให้สั้น มี decision boundary และ progressive disclosure: [OpenAI Developers](https://developers.openai.com/blog/rethinking-skills-and-prompts-for-gpt-6-astra)

## เทคนิค/Skills/Workflow น่าลอง

🔍 สถานการณ์: อยากรู้ agent ตัดสินใจพลาดตรงไหน; Pattern: decision-fork log; บันทึก `options considered`, `chosen path`, `evidence`, `verification result`; Review เฉพาะ fork ที่กระทบ outcome: [Hugging Face Papers](https://huggingface.co/papers/2609.25804)
🧪 สถานการณ์: มี skill catalog หลายตัว; Pattern: 2-layer eval; ชั้นแรก assert skill invoked, ชั้นสอง judge instruction following จาก trajectory/trace: [AWS Machine Learning Blog](https://aws.amazon.com/blogs/machine-learning/evaluate-skill-equipped-agents-with-strands-evals-and-amazon-bedrock-agentcore/)
🔐 สถานการณ์: เปิด agent ใน repo จริง; Pattern: sandbox + OTel launch checklist; `allowlist paths`, `network policy`, `credential policy`, `trace endpoint`, `content capture setting`: [GitHub Sandboxing](https://github.blog/changelog/2026-09-23-local-sandboxing-in-the-github-copilot-app/)
🧹 สถานการณ์: instructions เยอะจน agent สับสน; Pattern: skill description pruning; ตัวอย่าง: “Use when adding/changing DB migration” ดีกว่า “Use for database work”: [OpenAI Developers](https://developers.openai.com/blog/rethinking-skills-and-prompts-for-gpt-6-astra)

## มุมมองสำหรับ Solution Architect

🏗️ Reference architecture สำหรับ agent platform ตอนนี้ควรมี 6 กล่องขั้นต่ำ: model gateway, tool/MCP gateway, sandbox/runtime, telemetry, eval, human approval: [AWS AgentOps](https://aws.amazon.com/blogs/machine-learning/agentops-operationalize-agentic-ai-at-scale-with-amazon-bedrock-agentcore/)
🔐 Governance ต้องย้ายจาก “ใครใช้ AI ได้บ้าง” ไปเป็น “agent ทำ action อะไรได้ ภายใต้ policy ใด และ trace กลับได้ไหม”: [GitHub OTel](https://github.blog/changelog/2026-09-22-opentelemetry-in-the-github-copilot-app/)
🧪 หากจะวัด ROI ของ coding agents ให้แยก cycle time, defect leakage, review load, rollback rate, token/runtime cost และ developer trust score: [GitHub Changelog](https://github.blog/changelog/2026-09-23-copilot-code-review-more-ways-to-request-and-configure-reviews/)
📄 สำหรับ long-horizon agents ให้เพิ่ม evaluation ของ “taste” หรือ decision quality เพราะเส้นทางที่เลือกผิดตั้งแต่ต้นอาจผ่าน tests บางชุดแต่สร้าง debt ระยะยาว: [Hugging Face Papers](https://huggingface.co/papers/2609.25804)

## Thai Ecosystem Watch

🇹🇭 ข่าว/โพสต์จากชุมชนไทย: TechTalkThai โปรโมต AWS Community Day Thailand 2026 ที่มี AI Agent, AI-DLC, DevOps และ cloud security เป็นหัวข้อเด่น เหมาะกับการจับสัญญาณ community ไทยด้าน agent production: [TechTalkThai](https://www.techtalkthai.com/aws-community-day-thailand-2026/)
🇹🇭 ข่าว/โพสต์จากชุมชนไทย: Techsauce AI FOR ALL Hackathon เน้นแก้โจทย์จริงของคนไทยและทำเป็นซอฟต์แวร์ใน 3 เดือน เป็น local signal ของ problem-first AI delivery: [Techsauce](https://techsauce.co/news/ai-for-all-hackathon-true-aws-cp-2026)
🇹🇭 ข่าว/โพสต์จากชุมชนไทย: Pathumma Connect จาก NECTEC/สวทช. ถูกนำเสนอเป็น agentic AI platform สำหรับงานเอกสารไทยและอ้างอิง MCP เป็นสถาปัตยกรรมเชื่อมเครื่องมือ: [Techsauce](https://techsauce.co/ai/pathumma-connect-agentic-ai-platform)
🇹🇭 ข้อสรุปไทยวันนี้: ทีมไทยที่เริ่ม agent ควรลงทุนในภาษาและ checklist เรื่อง sandbox, trace, skill eval, data boundary และ human approval ตั้งแต่ pilot แรก: [GitHub Sandboxing](https://github.blog/changelog/2026-09-23-local-sandboxing-in-the-github-copilot-app/)
