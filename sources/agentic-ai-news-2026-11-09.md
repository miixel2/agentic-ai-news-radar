# Agentic AI News Radar — 2026-11-09

## ข่าวสำคัญ

- 📊 [GitHub: Usage metrics เพิ่ม code-review addressed rate](https://github.blog/changelog/2026-11-05-usage-metrics-api-adds-code-review-details-and-addressed-rate/) — รายงานระดับ enterprise/org เห็นว่าความเห็นจาก Copilot ถูกจัดการจริงกี่รายการ แยก severity, review tier และแหล่ง customization (instructions/skills/MCP) ได้; ให้วัดเมื่อ PR merge จึงไม่ควรนำไปตีความเป็นคุณภาพแบบ real-time

- 🧭 [Google Cloud: บทเรียนการนำ AI agents ไปใช้](https://cloud.google.com/blog/topics/consulting/lessons-for-adopting-ai-agents) เสนอให้ redesign งานเป็น “agent-executed, human-directed”: ให้ agent รับงาน routine/parallel และส่งเฉพาะกรณีกำกวมหรือใช้ judgment สูงให้คนตัดสินใจ แทนการให้คนตรวจทุกจุดจน workflow ช้า

- 🛡️ [AWS: TUI ขยาย threat modeling สู่ 100+ ทีมด้วย Bedrock](https://aws.amazon.com/blogs/architecture/how-tui-scales-threat-modeling-for-100-teams-with-amazon-bedrock/) เป็น case study การวางมาตรฐาน security assessment ให้ agent ช่วยทำซ้ำได้ในวงกว้าง; ตัวเลขผลลัพธ์เป็นรายงานจากผู้ให้บริการ จึงควรใช้เป็นแนวทางสถาปัตยกรรม ไม่ใช่ SLA ที่ย้ายมาใช้ได้ทันที

- 🧰 [OpenAI Agents API overview](https://developers.openai.com/api/docs/guides/agents-api/overview) ย้ำขอบเขตความรับผิดชอบที่ควรแยกชัด: managed harness ดูแล session/orchestration/context recovery ขณะที่แอปเป็นเจ้าของ tools, MCP และ execution environment—จุดตัดนี้คือ security boundary และต้นทุนหลักของ production agent

## ทำไมควรรู้

- 📐 การใช้งาน agent ที่ “เยอะ” ไม่เท่ากับสร้างผลลัพธ์: KPI ที่ดีต้องเชื่อม tool trace → PR/decision → ผลตรวจโดยคนหรือ CI → remediation/rollback และแยก missing telemetry ออกจากการไม่มีการใช้งาน

- 🔒 การยกระดับ autonomy ควรผูกกับระดับความย้อนกลับได้: เริ่มจากสรุป/วิเคราะห์แบบ read-only, ไปสู่ PR ที่มี CI, แล้วค่อยเปิด action ที่มี approval และ audit trail ครบ

## น่าลอง/น่าอ่านต่อ

- 📈 [GitHub: telemetry และ version gaps ใน Usage Metrics API](https://github.blog/changelog/2026-11-05-usage-metrics-api-flags-telemetry-and-version-gaps/) — ใช้แยก “ไม่มี detail เพราะ client/extension/proxy” ออกจาก “ทีมไม่ใช้”; ค่า `null`/missing คือ data unavailable ไม่ใช่ศูนย์

- 🧪 [AWS: Agentic AI Well-Architected Lens](https://aws.amazon.com/blogs/architecture/automating-agentic-ai-well-architected-reviews-with-the-aws-agentic-ai-lens/) — ตัวอย่างเปลี่ยน best-practice checklist เป็น skill ที่สร้างหลักฐาน review; ตรวจให้ human ยืนยัน evidence และ exception ก่อนปิด finding

## เทคนิค/Skills/Workflow น่าลอง

- 🧾 **Outcome-backed review metric** — ใช้เมื่อ rollout Copilot code review: เก็บ `comments_evaluated`, `comments_addressed`, severity และผล CI/incident ตาม repository; template: `addressed_rate + escaped_defects + median_review_time`. *ตรวจ:* ระวังนับซ้ำ เพราะ metric ถูกลงวันที่ merge และอาจรวม bot PR บางส่วน

- 🚦 **Graduated autonomy matrix** — ใช้เมื่อเลือกงานให้ agent: กำหนดระดับ `read → draft → PR → execute` พร้อม tool allowlist, identity, rollback และ approver สำหรับแต่ละระดับ. *ตรวจ:* ทดสอบ deny path/credential expiry และยืนยันว่า policy เปลี่ยนระดับไม่ได้ด้วย prompt เพียงอย่างเดียว

- 🔍 **Evidence-first architecture review skill** — ใช้เมื่อ agent ช่วย threat model: ให้ output เป็น `asset → threat → control → evidence link → owner → due date` แทน prose; ให้ skill เปิด finding ได้ แต่ห้ามปิด finding เอง. *Caveat:* coverage ของ agent ไม่ใช่หลักฐานว่าระบบปลอดภัย ต้องสุ่ม review โดย security engineer

## มุมมองสำหรับ Solution Architect

- 🏗️ ทำให้ “evidence plane” เป็นส่วนหนึ่งของ platform ตั้งแต่ต้น: event schema เดียวควรผูก actor/identity, model+instruction version, tool permission, input class, policy decision, output, human action และ business outcome เพื่อให้ audit และ cost attribution ตอบคำถามเดียวกันได้

- 🔐 สำหรับ coding agents ให้ ownership ของ skill/MCP/custom instructions ชัดเจนตาม repository; ใช้ metrics เพื่อหา drift หรือ adoption gap แต่ให้ CI, code owner และ security review เป็น source of truth สำหรับความถูกต้อง

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: [Techsauce: Sea x OpenAI Regional Codex Hackathon ที่ไทย](https://techsauce.co/pr-news/sea-x-openai-hackathon-thailand) เป็นสัญญาณว่าโจทย์ “autonomous/adaptive AI, AI-native operations, deep-domain AI” เริ่มถูกหยิบมาสร้างในชุมชนไทย; ข่าวระบุวันจัด 21 พ.ย. 2569 แต่กำหนดสมัครที่เผยแพร่คือ 23 ต.ค. จึงควรตรวจสถานะกับผู้จัดโดยตรงก่อนอ้างอิงหรือเข้าร่วม

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: [TechTalkThai: Gemini agent สำหรับองค์กร](https://www.techtalkthai.com/google-cloud-launches-gemini-agent-for-enterprise-supports-claude/) ช่วยสรุปมุม local ของ agent ที่มี identity/governance/cost control; เป็นบทความสื่อไทยและข่าวเดิม จึงควรยืนยัน availability, data residency และเงื่อนไขสัญญาจาก [ประกาศ Google Cloud ต้นทาง](https://cloud.google.com/blog/products/ai-machine-learning/welcome-to-gemini-at-work-2026) ก่อนออกแบบใช้งานจริง

## Weekly Brief — 3–9 พ.ย. 2026

- 🗓️ **What changed:** สัปดาห์นี้สัญญาณหลักไม่ใช่ model ใหม่ แต่เป็น control plane ที่ละเอียดขึ้น—GitHub เพิ่ม metrics สำหรับ code review/telemetry และ Google เน้น ownership กับ human-directed workflows; การเปลี่ยนแปลง Copilot วันที่ 5–6 พ.ย. ถูกบันทึกในรายงานก่อนหน้าแล้ว

- 🛠️ **Impact for builders:** เริ่มกับ workflow ที่ output ตรวจได้ เช่น review, threat-model draft หรือ data investigation แบบ read-only; นิยาม input/output schema, human handoff และ golden cases ก่อนเพิ่ม tools หรือ subagents

- ✅ **Production readiness:** พร้อมเมื่อมี least-privilege identity, sandbox/tool boundary, trace ที่ redacted, CI/eval gate, rollback และ owner ของทุก skill/MCP—not เพียงแค่ agent ทำ demo สำเร็จ

- ⚠️ **Security/governance risk:** dashboard ที่ telemetry ขาดหรือ metric รวมผิด cohort ทำให้ตัดสินใจจากข้อมูลหลอกได้; review feedback ที่ “addressed” ก็ยังไม่ยืนยันว่าการแก้ถูกต้อง จึงต้องตามด้วย tests และ post-merge signals

- 🇹🇭 **Thai relevance / study next:** ใช้ hackathon และสื่อชุมชนเป็นช่องทางทดลอง skill/workflow ในโจทย์ไทย แต่ยึด primary docs เป็นฐาน; หัวข้อที่ควรศึกษาในสัปดาห์หน้า: agent identity, evidence contracts, review-provenance และ human-exception queue
