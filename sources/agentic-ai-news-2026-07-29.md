# Agentic AI News Radar - 2026-07-29

## ข่าวสำคัญ

- ⚙️ OpenAI อธิบาย GPT-5.6 efficiency stack รวมถึง agentic harness ที่ลด context bloat, reuse work และรักษา prompt-cache prefix ให้เสถียร [OpenAI](https://openai.com/index/gpt-5-6-frontier-intelligence-efficiency/)
- 🔌 MCP final ทำให้ cacheable lists และ stateless request model สำคัญขึ้นสำหรับ agents ที่ต้องเรียก tools หลายรอบ [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 📚 Hugging Face Papers มีงาน TheMCPCompany benchmark สำหรับ agents ที่ใช้ task-specific MCP tools มากกว่า 18,000 tools [Hugging Face Papers](https://huggingface.co/papers?q=general-purpose+agents)

## ทำไมควรรู้

- ⚙️ Performance ของ agents ไม่ได้มาจาก model อย่างเดียว แต่มาจาก harness: context packing, tool iteration, caching และ repeated work [OpenAI](https://openai.com/index/gpt-5-6-frontier-intelligence-efficiency/)
- 🧾 MCP cache hints ช่วยให้ tool catalog ไม่ทำให้ prompt cache แตกทุกครั้งที่ reconnect [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 📚 Benchmark ที่มี tool จำนวนมากบอกว่า retrieval/selection ของ tools คือ competency สำคัญ ไม่ใช่แค่ reasoning [Hugging Face Papers](https://huggingface.co/papers?q=general-purpose+agents)

## น่าลอง/น่าอ่านต่อ

- 🧮 วัด agent run เป็น timeline: model calls, tool calls, context size, cache hit, retry และ human waits [OpenAI](https://openai.com/index/gpt-5-6-frontier-intelligence-efficiency/)
- 🔧 ทำ tool list deterministic และใส่ TTL ชัดเจนสำหรับ MCP server ภายใน [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 📚 อ่าน TheMCPCompany เพื่อออกแบบ eval ว่า agent เลือก tool ถูกไหมเมื่อมีเครื่องมือเยอะ [Hugging Face Papers](https://huggingface.co/papers?q=general-purpose+agents)

## เทคนิค/Skills/Workflow น่าลอง

- ⚙️ สถานการณ์: agent ช้าและแพง; Pattern: repeated-region audit; Template: “For each loop, log context bytes, tool schema bytes, cache status, result size”; Verify: ลด context bloat แล้ว task success ไม่ตก [OpenAI](https://openai.com/index/gpt-5-6-frontier-intelligence-efficiency/)
- 🔎 สถานการณ์: tools เยอะ; Pattern: tool retrieval eval; Example: goal -> expected tool set -> selected tool set -> outcome; Caveat: อย่าให้ description คลุมเครือ [Hugging Face Papers](https://huggingface.co/papers?q=general-purpose+agents)

## มุมมองสำหรับ Solution Architect

- 🧠 Agent architecture ต้องออกแบบ “เศรษฐศาสตร์ของ loop” เพราะ cost เล็ก ๆ ในแต่ละ iteration คูณหลายสิบครั้ง [OpenAI](https://openai.com/index/gpt-5-6-frontier-intelligence-efficiency/)
- 🧭 MCP + benchmark trend ชี้ว่าอนาคตของ enterprise agents คือ tool portfolio management: catalog, retrieval, policy, eval [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: DevHub บทความ Harness Engineering อธิบาย AGENTS.md แบบสารบัญและแยก docs/ เพื่อให้ agent อ่านบริบทอย่างเป็นระบบ เหมาะกับทีม dev ไทยที่เริ่มใช้ coding agents [DevHub](https://devhub.in.th/en/blog/openai-harness-engineering-codex-zero-code)
- 🇹🇭 ข้อเสนอ: นำแนวคิด “AGENTS.md สั้น + docs/ เป็นแหล่งความจริง” ไปใช้กับ repo ไทยก่อนเพิ่ม automation ที่ซับซ้อน [DevHub](https://devhub.in.th/en/blog/openai-harness-engineering-codex-zero-code)
