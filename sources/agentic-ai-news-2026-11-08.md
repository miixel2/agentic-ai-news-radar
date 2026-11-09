# Agentic AI News Radar — 2026-11-08

## ข่าวสำคัญ

- 🧩 [OpenAI API Changelog: Agents API sessions ปรับ tool ได้กลาง session](https://developers.openai.com/api/docs/changelog) — การเปลี่ยน tool set จะมีผลกับ model call ถัดไปสำหรับ function/MCP และ turn ถัดไปสำหรับ built-in tools; context compaction แบบ background เป็นค่าเริ่มต้น จึงต้องประเมินผลกระทบต่อ cost และการสืบย้อนเหตุผลของ agent

- 🗂️ [OpenAI เข้าซื้อ Pierre Computer Company](https://openai.com/index/openai-to-acquire-pierre/) เพื่อขยายเครื่องมือจัดการ/ทำความเข้าใจ/review code ของ Codex; สัญญาณสำคัญคือ workflow Git ต้องรองรับการแตกงานขนานของ coding agents ไม่ใช่แค่เพิ่มความเร็วในการ generate code

- 🛡️ [Google Cloud: security ในยุค agentic](https://cloud.google.com/blog/products/identity-security/helping-you-build-and-defend-at-machine-speed-in-the-agentic-era) ยกตัวอย่าง CodeMender ที่แยกการยืนยันช่องโหว่และการจำลอง exploit ใน sandbox/VM พร้อม human-in-the-loop ก่อนเขียนไฟล์หรือสั่งคำสั่ง—เป็นแนวทางลด blast radius ที่นำไปใช้กับ agent อื่นได้

- 🔐 [Google Data Cloud connectors for Gemini](https://cloud.google.com/blog/products/data-analytics/query-enterprise-data-in-gemini-with-data-cloud-connectors) อยู่ใน preview สำหรับถามข้อมูล enterprise แบบ natural language โดยย้ำการบังคับ row/column-level security และ end-user credentials; อย่าตีความว่า connector แก้ปัญหา data authorization แทนการออกแบบ policy

- ☁️ [AWS Weekly Roundup: Step Functions เป็น agent tools](https://aws.amazon.com/blogs/aws/category/artificial-intelligence/) ชี้ทิศทางเชื่อม workflow ที่ deterministic เข้ากับ agent ผ่านเครื่องมือที่มี state/permission ชัดเจน แทนเปิดสิทธิ์ cloud API แบบกว้างให้ model เรียกโดยตรง

## ทำไมควรรู้

- 🧭 ความยืดหยุ่นของ tool ระหว่าง session ทำให้ agent ปรับตัวเร็วขึ้น แต่เพิ่มความเสี่ยง configuration drift: trace ต้องบันทึก tool manifest, version, identity และ policy decision ของทุก turn ที่มีผลกระทบ

- 🔏 การให้ agent ค้นข้อมูลสดหรือแก้ vulnerability ต้องใช้ least privilege สองชั้น: จำกัด identity/data scope ก่อน แล้วจำกัด execution/sandbox อีกชั้น; human review เป็น control สำหรับ action ที่ย้อนกลับยาก ไม่ใช่แค่ปุ่มยืนยัน

## น่าลอง/น่าอ่านต่อ

- 🧪 [OpenAI Agent Builder transition note](https://developers.openai.com/api/docs/guides/agent-builder) — Agent Builder ถูกประกาศ deprecate และมีกำหนดปิด 30 พ.ย. 2026; ทีมที่ใช้ visual workflow ควร inventory workflow, export/deploy code และซ้อม regression ก่อน deadline

- 📊 [BigQuery observability for data agents](https://cloud.google.com/blog/products/data-analytics/whats-new-with-google-data-cloud) — ใช้เป็นตัวอย่าง baseline: ดู performance, adoption, latency, cost และ multi-turn traces ร่วมกัน ก่อนขยาย conversational analytics

## เทคนิค/Skills/Workflow น่าลอง

- 🧾 **Tool-manifest snapshot** — ใช้เมื่อ agent เปลี่ยน tools/MCP ระหว่างงาน: บันทึก `session_id`, tool name/version, scopes, policy hash และเวลา ก่อนทุก privileged call; เทียบ diff กับ allowlist ใน CI. *Caveat:* ต้อง redaction token/PII ออกจาก trace ก่อนเก็บระยะยาว

- 🧱 **Deterministic workflow wrapper** — ใช้เมื่อ agent ต้องทำงาน cloud ที่มีผลกระทบ: ให้ agent เลือกเฉพาะ input แล้วเรียก Step Function/workflow ที่กำหนด state, retry และ IAM ล่วงหน้า; ตัวอย่าง prompt: `เลือก action จาก allowlist และส่ง only typed inputs; ถ้าไม่มี action ที่ตรง ให้ escalate`. *ตรวจ:* ทดสอบ deny path, duplicate request และ rollback

- 🧯 **Two-phase security remediation** — ใช้กับ agent หา/แก้ช่องโหว่: phase 1 ให้ตรวจ/จำลองใน isolated sandbox แบบ read-only, phase 2 สร้าง patch + test และรอ human approval ก่อน write/merge. *ตรวจ:* ยืนยันว่า sandbox ไม่มี production credential และ artifact จาก phase 1 แนบกับ PR

- 🔄 **Workflow exit plan** — ใช้กับ visual/managed agent builder ที่มีประกาศเปลี่ยนแปลง: ส่งออก DAG/config, เก็บ golden test inputs/expected tool calls แล้วรัน parity test บน runtime เป้าหมาย. *Caveat:* อย่าวัดแค่คำตอบสุดท้าย—ตรวจ tool-call order, permission denial และ recovery ด้วย

## มุมมองสำหรับ Solution Architect

- 🏗️ วาง “agent change management” เป็น production capability: ทุกการปรับ model, tool, instruction หรือ policy ต้องมี owner, versioned manifest, eval suite และ rollout/rollback path เหมือนการเปลี่ยน service API

- 🔒 สำหรับ enterprise data agent ให้ identity เป็นของผู้ใช้หรือ workload ที่ตรวจสอบได้ ไม่ใช่ shared super-service account; ทำ permission boundary ที่ data connector และ execution runtime แยกกัน พร้อม trace ที่เชื่อมคำถาม → query/tool → outcome

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: [devhub: กรณี AI coding tool ใน fake job interview](https://devhub.in.th/th/blog/binance-hacked-by-fake-job-interview-ai-tool-2026) เป็นสื่อเตือนภัยที่เข้าใจง่ายสำหรับทีมไทยเกี่ยวกับ repository/installer และสิทธิ์ของ coding agent; รายละเอียด incident เป็นการสรุปจากชุมชน จึงควรยืนยันกับรายงานผู้เสียหาย/forensics ก่อนใช้ใน risk register

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: [TechTalkThai: Snowflake CoCo/CoWork Bots](https://www.techtalkthai.com/category/products/) ชี้ว่าตลาด enterprise เริ่มออกแบบ agent ให้ทำงานเบื้องหลังและเรียกคนเฉพาะจุดอนุมัติ; ใช้เป็นประเด็น workshop ได้ แต่ควรตรวจเอกสาร Snowflake โดยตรงสำหรับ availability, data boundary และข้อกำหนดในไทย
