# Agentic AI News Radar - 2026-07-16

## ข่าวสำคัญ

- ☁️ Google Cloud เผยแนวทางใช้ Claude at scale บน Vertex AI โดย AnthropicVertex client รองรับ prompt caching, tool use, structured outputs, streaming และ adaptive thinking ภายใต้ IAM/VPC ของโปรเจกต์ [Google Cloud Blog](https://cloud.google.com/blog/products/ai-machine-learning/claude-at-scale-on-google-cloud-frontier-ai-built-for-enterprise-production)
- 🧠 Hugging Face Papers มีงาน Agent-Native Memory System ที่ประเมิน memory systems หลายแบบและสรุปว่าไม่มี architecture เดียวที่ชนะทุก workload [arXiv](https://arxiv.org/abs/2606.24775)
- 🧪 งาน SkillOpt-Lite เสนอ minimal pipeline สำหรับ agent self-evolution/skill optimization ด้วยแนวคิด zeroth-order optimization ลดความซับซ้อนของ pipeline [Hugging Face Papers](https://huggingface.co/papers/2607.03451)

## ทำไมควรรู้

- 🔐 การรัน Claude ผ่าน Vertex AI ทำให้องค์กรที่อยู่บน Google Cloud ได้ประโยชน์จาก IAM/VPC เดิม แต่ยังต้องทดสอบ behavior ของ tool use และ structured output ใน use case จริง [Google Cloud Blog](https://cloud.google.com/blog/products/ai-machine-learning/claude-at-scale-on-google-cloud-frontier-ai-built-for-enterprise-production)
- 🧩 Memory ใน agent ไม่ควรเลือกเพราะชื่อเทคนิค แต่ควรเลือกตาม bottleneck เช่น retrieval, personalization, long-horizon state หรือ auditability [arXiv](https://arxiv.org/abs/2606.24775)
- 🛠️ Skill optimization ที่ง่ายลงช่วยให้ทีมทำ continuous improvement ของ agent skills ได้ แต่ต้องมี eval set กัน skill drift [Hugging Face Papers](https://huggingface.co/papers/2607.03451)

## น่าลอง/น่าอ่านต่อ

- ☁️ ทดสอบ AnthropicVertex client กับ use case ที่ต้อง tool use + structured output แล้ววัด latency, cost, auth path และ logging [Google Cloud Blog](https://cloud.google.com/blog/products/ai-machine-learning/claude-at-scale-on-google-cloud-frontier-ai-built-for-enterprise-production)
- 🧠 อ่าน Agent-Native Memory System เพื่อทำ memory decision record: workload, data shape, freshness, write policy, deletion policy และ eval metric [arXiv](https://arxiv.org/abs/2606.24775)
- 🧪 อ่าน SkillOpt-Lite แล้วทดลองปรับ skill instructions ทีละบรรทัดกับ benchmark เล็กๆ ก่อนนำไปใช้กับ automation จริง [Hugging Face Papers](https://huggingface.co/papers/2607.03451)

## เทคนิค/Skills/Workflow น่าลอง

- 🧠 สถานการณ์: agent จำข้อมูลผู้ใช้/โปรเจกต์; Pattern: memory fit test; Template: “Define recall task, update task, deletion task, conflict task, audit task; compare memory design before rollout.” [arXiv](https://arxiv.org/abs/2606.24775)
- 🧪 สถานการณ์: ปรับ skill แล้วผลดีขึ้นบางงานแต่แย่ลงบางงาน; Pattern: skill canary; รัน eval 10-20 เคสก่อนโปรโมต skill และเก็บ rollback version [Hugging Face Papers](https://huggingface.co/papers/2607.03451)
- ☁️ สถานการณ์: ใช้ model ผ่าน cloud provider; Pattern: provider control checklist; ตรวจ IAM, VPC, logging, prompt caching, region, data retention และ fallback model [Google Cloud Blog](https://cloud.google.com/blog/products/ai-machine-learning/claude-at-scale-on-google-cloud-frontier-ai-built-for-enterprise-production)

## มุมมองสำหรับ Solution Architect

- 🏗️ Agent memory เป็น architecture decision ที่กระทบ privacy, UX, cost และ correctness จึงควรมี ADR แยก ไม่ใช่ซ่อนใน prompt [arXiv](https://arxiv.org/abs/2606.24775)
- 🔁 Self-evolving skills เหมาะกับงานซ้ำที่มี eval ชัด เช่น triage, code review checklist, report generation แต่ไม่ควรใช้กับ policy/security โดยไม่มี human approval [Hugging Face Papers](https://huggingface.co/papers/2607.03451)
- ☁️ Multi-cloud/model strategy ควรแยก interface ของ tool/schema/eval ออกจาก provider client เพื่อย้ายหรือเทียบ model ได้ง่าย [Google Cloud Blog](https://cloud.google.com/blog/products/ai-machine-learning/claude-at-scale-on-google-cloud-frontier-ai-built-for-enterprise-production)

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: Techsauce มีบทความ SCB TechX/agentic AI ใน banking context แม้มี paywall/login บางส่วน จึงใช้เป็น local signal ไม่ใช่หลักฐานเทคนิคหลัก [Techsauce](https://techsauce.co/en/tech-and-biz/inclusive-fintech-scb-techx-playbook)
- 🇹🇭 สำหรับองค์กรไทยที่ทำ AI banking/enterprise assistant ให้แยก memory policy ตาม PDPA และสิทธิ์พนักงาน เพราะ memory ที่ดีทาง UX อาจเป็น risk ถ้าลบ/ตรวจสอบไม่ได้ [arXiv](https://arxiv.org/abs/2606.24775)
