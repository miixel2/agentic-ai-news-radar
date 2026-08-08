# Agentic AI News Radar - 2026-08-02

## ข่าวสำคัญ

- 🧪 ไม่มี launch ใหญ่ที่น่าแยกเป็นข่าววันนี้ แต่ MCP 2026-07-28 และ OpenAI harness efficiency ยังเป็นงานอ่านหลักสำหรับทีมที่ทำ agents จริง [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧰 DeepLearning.AI มี short course ด้าน Agent Memory และ Agent Skills ที่ยังเหมาะเป็น evergreen learning สำหรับทีม builder [DeepLearning.AI Community](https://community.deeplearning.ai/c/news-and-announcements/24)
- 🧠 Hugging Face Agents docs รวม MCP server, skills, agent traces และ Hub integration เป็น reference สำหรับ open ecosystem agents [Hugging Face Docs](https://huggingface.co/docs/hub/agents)

## ทำไมควรรู้

- 🧪 Quiet day ไม่ได้แปลว่าไม่ต้องทำงาน: ช่วงหลัง spec release คือเวลาทำ migration/eval debt ให้เสร็จ [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧠 Memory/skills เป็น practical primitives ที่ทีมส่วนใหญ่ยังทำหลวมเกินไป เช่น memory ไม่มี retention policy หรือ skill ไม่มี verification step [DeepLearning.AI Community](https://community.deeplearning.ai/c/news-and-announcements/24)
- 🔌 HF docs ช่วยเห็นภาพว่า MCP/skills/traces จะรวมอยู่ใน developer workflow ปกติมากขึ้น [Hugging Face Docs](https://huggingface.co/docs/hub/agents)

## น่าลอง/น่าอ่านต่อ

- 🧰 เรียน/ทบทวน Agent Memory แล้วแยก memory เป็น user preference, project facts, decisions และ ephemeral run state [DeepLearning.AI Community](https://community.deeplearning.ai/c/news-and-announcements/24)
- 🔌 อ่าน HF MCP Server docs เพื่อดูตัวอย่าง assistant ต่อ Hub resources ผ่าน MCP [Hugging Face Docs](https://huggingface.co/docs/hub/en/agents-mcp)
- 🧾 ทำ cleanup: ลบ stale tool descriptions และเพิ่ม owner ให้ tools ที่ agent เรียกได้ [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)

## เทคนิค/Skills/Workflow น่าลอง

- 🧠 สถานการณ์: agent จำข้อมูลผิดหรือเก็บเยอะเกิน; Pattern: memory type split; Template: “Preference / Fact / Decision / Temporary note / Expiry”; Verify: monthly memory review [DeepLearning.AI Community](https://community.deeplearning.ai/c/news-and-announcements/24)
- 🧰 สถานการณ์: skill ใช้ซ้ำหลาย repo; Pattern: skill with acceptance check; Example: include when-to-use, steps, forbidden actions, final verification; Caveat: อย่าใส่ข้อมูลลับใน skill shared [Hugging Face Docs](https://huggingface.co/docs/hub/agents)

## มุมมองสำหรับ Solution Architect

- 📚 Evergreen takeaway: agent reliability มักดีขึ้นจาก runbook/skill/memory hygiene มากกว่าการเปลี่ยน model อย่างเดียว [DeepLearning.AI Community](https://community.deeplearning.ai/c/news-and-announcements/24)
- 🧭 ตั้ง governance เบา ๆ ให้ memory และ skills ตั้งแต่ต้น เพราะสองอย่างนี้จะกลายเป็น hidden control surface ของ agent [Hugging Face Docs](https://huggingface.co/docs/hub/agents)

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: ไม่พบ local technical update ใหม่ที่ high-signal วันนี้; ใช้เวลาเงียบทำ glossary/skill ภาษาไทยสำหรับทีมภายในแทน [DeepLearning.AI Community](https://community.deeplearning.ai/c/news-and-announcements/24)
- 🇹🇭 Evergreen: ทำ template skill ภาษาไทย เช่น “วิธี review PR ด้วย agent” พร้อมขั้นตอนตรวจ test, security, rollback และสิ่งที่ห้ามทำ [Hugging Face Docs](https://huggingface.co/docs/hub/agents)
