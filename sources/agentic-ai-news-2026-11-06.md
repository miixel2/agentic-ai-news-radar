# Agentic AI News Radar — 2026-11-06

## ข่าวสำคัญ

- ⚙️ [Google: Agent Substrate on GKE/CNCF](https://cloud.google.com/blog/products/containers-kubernetes/open-infrastructure-for-autonomous-agents-comes-to-cncf) เป็นสัญญาณชัดว่า production agent ต้องมี runtime สำหรับ state, sandbox และ subagent—not เพียง orchestration library

- 🧑‍⚖️ [Google: people-first agent adoption](https://cloud.google.com/blog/topics/consulting/lessons-for-adopting-ai-agents) ชี้ให้ human-directed workflow เป็นแกนการเปลี่ยนผ่านองค์กร แทนการให้ autonomy เต็มรูปแบบตั้งแต่เริ่ม

- 🧰 [OpenAI: Scaling Git at OpenAI](https://openai.com/index/scaling-git-at-openai/) ทำให้เห็นว่าเมื่อ coding agents ทำงานพร้อมกัน source-control throughput และ merge governance กลายเป็น architectural concern

- 🤖 [GitHub: Copilot model retirement](https://github.blog/changelog/2026-10-15-upcoming-deprecation-of-selected-github-copilot-models-in-mid-november/) มี deadline 16 พ.ย. สำหรับโมเดลที่ระบุ; ผู้ดูแลควรตรวจ policy และ smoke test ก่อนเปลี่ยน

## ทำไมควรรู้

- 🧱 สัปดาห์นี้ภาพรวมเปลี่ยนจาก “เลือก model/agent framework” เป็น “ออกแบบ execution + data + identity + review plane” ที่ตรวจสอบและกู้คืนได้

## น่าลอง/น่าอ่านต่อ

- 📚 [OpenAI API deprecations](https://developers.openai.com/api/docs/deprecations): Evals, reusable prompts และ Agent Builder มีกำหนดปิด 30 พ.ย. 2026—ตรวจ inventory/migration ตอนนี้

- 📚 [OpenAI API changelog](https://developers.openai.com/api/docs/changelog): ใช้เป็น source of truth สำหรับ Agents API, sandbox และ MCP security changes

## เทคนิค/Skills/Workflow น่าลอง

- 🧪 “Recovery game day” — ใช้กับ agent ที่เรียกเครื่องมือจริง: ตัด worker/หมดอายุ credential/ให้ tool timeout แล้วตรวจว่า resume จาก checkpoint, ไม่ทำ action ซ้ำ และทิ้ง trace ครบ

- 📝 “Policy-as-code skill” — เก็บ allowed tools, data classes, approval thresholds และ test cases ไว้ใน repo; ให้ PR review ก่อน policy เปลี่ยน และใช้ unit test ตรวจ deny path

- 📊 “Agent rollout scorecard” — วัด task success ที่ผ่าน validation, rollback, human escalation, denied-tool rate, latency และ cost/task; อย่าวัดเพียงจำนวน action หรือ LOC

## มุมมองสำหรับ Solution Architect

- 🧭 เลือก managed runtime เมื่อความเร็วและ control plane สำเร็จรูปสำคัญ; เลือก Kubernetes/open runtime เมื่อต้องควบคุม network, tenancy และ lifecycle อย่างลึก—ทั้งสองทางยังต้องมี policy gateway และ evidence store

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: [Techsauce: Sea × OpenAI Codex Hackathon](https://techsauce.co/review/81fb2aa9-f99f-46ca-9860-2fa77684d9f9) เป็นโอกาสให้ทีมไทยทดลอง production-grade agentic work; ยืนยันวัน/เงื่อนไขกับผู้จัดก่อนวางแผน

## Friday Research Digest

- 📄 **[Open infrastructure for autonomous agents](https://cloud.google.com/blog/products/containers-kubernetes/open-infrastructure-for-autonomous-agents-comes-to-cncf)** — แกนคิด: agent loop ต้องมี sandbox/state/runtime; สำคัญเพราะย้ายความเสี่ยงจาก prompt ไปสู่ workload platform; takeaway: เริ่มด้วย checkpoint และ identity ต่อ task; **อ่าน: สูง**

- 📄 **[Leading in the agentic era](https://cloud.google.com/blog/topics/consulting/lessons-for-adopting-ai-agents)** — แกนคิด: งานให้ agent execute แต่คนยังชี้ทิศ/ตัดสินใจ; takeaway: ออกแบบ ownership และ escalation ก่อนเพิ่ม autonomy; **อ่าน: สูง**

- 📄 **[Scaling Git at OpenAI](https://openai.com/index/scaling-git-at-openai/)** — แกนคิด: concurrent coding agents เปลี่ยน SCM เป็น infrastructure; takeaway: วัด PR/CI/merge queue ก่อนขยาย fleet; **อ่าน: กลาง-สูง**

- 📄 **[OpenAI deprecations](https://developers.openai.com/api/docs/deprecations)** — แกนคิด: platform lifecycle เป็นความเสี่ยงของ agent architecture; takeaway: ทำ migration inventory และ regression suite ก่อน deadline; **อ่าน: สูงสำหรับทีม OpenAI**

## Monthly Trend Synthesis

- 📈 ต้นเดือนพฤศจิกายนเห็นสามแนวโน้ม: runtime agent เริ่มเป็น platform concern, governance ต้องฝังใน identity/data/tool layer, และ coding-agent scale กระทบ CI/SCM; เดือนนี้ควรทำ inventory ของ tools/credentials/models, เลือกหนึ่ง workflow ที่ reversible และทำ recovery+approval drill ก่อนขยายผล
