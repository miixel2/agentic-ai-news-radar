# Agentic AI News Radar - 2026-08-04

## ข่าวสำคัญ

- 🔎 Hugging Face Papers ชู Tool-to-Agent Retrieval สำหรับ routing ในระบบ multi-agent ที่มี tools/MCP servers จำนวนมาก [Hugging Face Papers](https://huggingface.co/papers?q=agent-level+retrieval)
- 🧠 Hugging Face Agentic Resource Discovery เสนอ catalog/search layer สำหรับ tools, skills และ agents [Hugging Face](https://huggingface.co/blog/agentic-resource-discovery-launch)
- 🔌 MCP 2026-07-28 cacheable lists ช่วยให้ catalog/tool listings มี TTL และ deterministic order [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)

## ทำไมควรรู้

- 🔎 เมื่อ tools เยอะขึ้น ปัญหาใหญ่คือ retrieval/routing ไม่ใช่แค่ prompt engineering [Hugging Face Papers](https://huggingface.co/papers?q=agent-level+retrieval)
- 🧠 Discovery ที่ดีต้องมี metadata เพียงพอ: capability, risk, auth, examples, owner, freshness [Hugging Face](https://huggingface.co/blog/agentic-resource-discovery-launch)
- 🔌 MCP cache hints ช่วยสร้าง stable context สำหรับ clients และลดค่าใช้จ่ายจากการโหลด tool schema ซ้ำ [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)

## น่าลอง/น่าอ่านต่อ

- 🗂️ ทำ tool card 1 หน้า: name, when to use, when not to use, inputs, side effects, auth, examples [Hugging Face](https://huggingface.co/blog/agentic-resource-discovery-launch)
- 🔎 สร้าง eval “wrong tool selected” จาก incident หรือ ticket ที่ agent เคยพลาด [Hugging Face Papers](https://huggingface.co/papers?q=agent-level+retrieval)
- 🧾 ใส่ TTL/cacheScope ให้ list endpoints ใน MCP server เมื่อ SDK รองรับ [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)

## เทคนิค/Skills/Workflow น่าลอง

- 🧰 สถานการณ์: agent มี tools 50+; Pattern: two-stage selection; Template: “retrieve candidate tools -> ask model to justify top 3 -> call only approved tool”; Verify: compare against labeled tool set [Hugging Face Papers](https://huggingface.co/papers?q=agent-level+retrieval)
- 🧾 สถานการณ์: tool schema เปลี่ยนบ่อย; Pattern: catalog freshness gate; Example: reject stale tool card if last verified > 30 days; Caveat: owner ต้องรับผิดชอบ [Hugging Face](https://huggingface.co/blog/agentic-resource-discovery-launch)

## มุมมองสำหรับ Solution Architect

- 🗺️ Tool catalog คือ architecture artifact ใหม่ ต้องมี lifecycle เหมือน API catalog หรือ service catalog [Hugging Face](https://huggingface.co/blog/agentic-resource-discovery-launch)
- 🧪 ถ้าไม่มี labeled eval สำหรับ tool routing คุณจะไม่รู้ว่า agent เลือก tool ถูกเพราะเข้าใจหรือเพราะโชคดี [Hugging Face Papers](https://huggingface.co/papers?q=agent-level+retrieval)

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: DevHub platform แสดงโปรเจกต์ AI agent/LINE bot ภาษาไทยพร้อม repo/demo บางส่วน เป็นแหล่ง local signal ที่ควรดูจากหลักฐานผลงาน ไม่ใช่ engagement [DevHub](https://devhub.in.th/th/)
- 🇹🇭 ข้อเสนอ: ทำ catalog ภาษาไทยของ internal tools ให้ business owner อ่านเข้าใจ เช่น “เรียกดูใบแจ้งหนี้”, “แก้สถานะ ticket”, “ส่ง LINE แจ้งเตือน” พร้อม risk level [DevHub](https://devhub.in.th/th/)
