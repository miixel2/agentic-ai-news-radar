# Agentic AI News Radar — 2026-10-23

## ข่าวสำคัญ

- 🧪 วันศุกร์—research digest: [Reliability of AI Agents](https://arxiv.org/abs/2610.07003) ชี้ว่า human rating อาจ drift; [Auditable Claims about AI Agents](https://arxiv.org/abs/2610.07459) ตั้งโจทย์การพิสูจน์ claim ด้าน approval/logging; และ [AWS skill evaluation guide](https://aws.amazon.com/blogs/machine-learning/category/artificial-intelligence/amazon-machine-learning/amazon-bedrock/amazon-bedrock-agentcore/page/3/) แยกวัดการเลือก skill จากคุณภาพคำตอบ

## ทำไมควรรู้

- 📏 คะแนน eval ที่ดีอาจเกิดจากผู้ประเมินหรือชุดทดสอบเปลี่ยน จึงต้อง version ทั้ง rubric, rater และ task distribution

## น่าลอง/น่าอ่านต่อ

- 📚 Read priority สูง: [Auditable Claims](https://arxiv.org/abs/2610.07459) สำหรับทีม regulated; กลาง: [Reliability](https://arxiv.org/abs/2610.07003) สำหรับผู้ดูแล eval program

## เทคนิค/Skills/Workflow น่าลอง

- 🧾 Pattern: “Evidence-backed release claim” — ทุกข้อความว่า agent “ปลอดภัย/มี approval” ผูกกับ trace, policy version และ test case; verify โดย reviewer สุ่ม replay หลักฐาน

- 🎯 Pattern: “Skill-selection eval” — วัดว่าเลือก procedure ถูกก่อนวัด final answer; caveat: ต้องมี negative/near-miss tasks

## มุมมองสำหรับ Solution Architect

- 🧪 ทำ eval registry ที่ immutable ต่อ release และแยก operational telemetry จาก human-rating calibration

## Thai Ecosystem Watch

- 🇹🇭 งานที่มี PDPA หรือ approval ภายในควรเก็บหลักฐานภาษาไทยที่ reviewer อ่านได้ ไม่พึ่งแต่ reasoning summary ของโมเดล
