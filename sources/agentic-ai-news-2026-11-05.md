# Agentic AI News Radar — 2026-11-05

## ข่าวสำคัญ

- ⚙️ [Google Cloud: Agent Substrate on GKE และ CNCF](https://cloud.google.com/blog/products/containers-kubernetes/open-infrastructure-for-autonomous-agents-comes-to-cncf) ประกาศ Agent Substrate 1.0/GA บน GKE และการนำโครงการสู่ CNCF Sandbox; เน้น agent loop ที่ stateful, sandboxed tool execution และ subagents

- 🧠 [Anthropic newsroom](https://www.anthropic.com/news?subjects=announcements) แสดง Claude Opus 5.5 และ Haiku 5.5 เป็นตัวเลือกสำหรับ agentic coding/งาน subagent ปริมาณสูง; ประสิทธิภาพและราคาเป็น claims ของผู้ให้บริการ จึงต้อง benchmark กับ workload ของตน

## ทำไมควรรู้

- ☸️ Kubernetes เหมาะเมื่อทีมต้องการ isolation, quota, workload identity และ observability ที่รวมศูนย์—but ยังต้องออกแบบ lifecycle ของ state/queue/tool results เอง

## น่าลอง/น่าอ่านต่อ

- 📚 อ่าน [OpenAI Agents API changelog](https://developers.openai.com/api/docs/changelog) เพื่อเทียบ managed sessions/sandboxes กับ control plane บน Kubernetes

## เทคนิค/Skills/Workflow น่าลอง

- 🧰 Pattern: “ephemeral worker + durable state” — รัน agent worker แบบ disposable, เก็บ task state/event log แยก และ resume จาก checkpoint; ทดสอบ kill-worker ระหว่าง tool call เพื่อยืนยัน recovery

- 🔒 Pattern: “least-privilege per turn” — mint credential ที่ผูก task/tool/TTL ต่อรอบ ไม่ใช้ credential ยาวอายุร่วม; verify ด้วย revoke drill และ audit trace

## มุมมองสำหรับ Solution Architect

- 🧭 อย่าเลือก Kubernetes เพราะ agent เป็น buzzword: เลือกเมื่อองค์กรมี platform team ที่ดูแล tenancy, network policy, secrets และ incident response ได้จริง

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: [Techsauce: TMA Inside the AI Frontier](https://techsauce.co/pr-news/tma-cullinan-executive-dialogue-inside-the-ai-frontier) สะท้อนการสนทนาเรื่อง business value ในองค์กรไทย; เนื้อหาเป็นประชาสัมพันธ์งาน จึงใช้เป็นสัญญาณตลาด ไม่ใช่หลักฐาน adoption
