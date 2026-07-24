# Agentic AI News Radar - 2026-07-21

## ข่าวสำคัญ

- ⚡ GitHub เพิ่ม Gemini 3.6 Flash ใน GitHub Copilot เป็นอีกตัวเลือก model สำหรับงานที่ต้องการ latency/cost profile ต่างจาก frontier coding model [GitHub Changelog](https://github.blog/changelog/2026-07-21-gemini-3-6-flash-is-now-available-in-github-copilot/)
- 🧠 Anthropic docs อัปเดต guidance เรื่อง model choice โดยชี้ให้ใช้ reasoning effort สูงขึ้นกับ coding และ high-autonomy agentic work [Anthropic Docs](https://docs.anthropic.com/en/docs/about-claude/models/choosing-a-model)
- 🔎 Claude web search tool docs อธิบาย dynamic filtering เพื่อคัดผลค้นหาก่อนเข้า context window ลด prompt bloat ในงาน research agents [Anthropic Docs](https://docs.anthropic.com/en/docs/build-with-claude/tool-use/web-search-tool)
- 📚 Hugging Face Papers มีงาน MCP/agent security และ benchmark ต่อเนื่อง สะท้อนว่า tool-use protocol เริ่มเป็น research/security surface หลักของ agents [Hugging Face Papers](https://huggingface.co/papers?q=Model+Context+Protocol+%28MCP%29)

## ทำไมควรรู้

- 🧮 Model choice ใน Copilot เริ่มเป็น optimization problem: เลือก model ตาม task risk, latency, cost และ review burden มากกว่าตามชื่อรุ่นอย่างเดียว [GitHub Changelog](https://github.blog/changelog/2026-07-21-gemini-3-6-flash-is-now-available-in-github-copilot/)
- 🧠 High-autonomy work ต้องคิดเรื่อง effort budget: ใช้ reasoning สูงกับงาน architecture/refactor/security แต่ไม่ควรใช้กับทุก prompt [Anthropic Docs](https://docs.anthropic.com/en/docs/about-claude/models/choosing-a-model)
- 🔍 Dynamic filtering เป็น pattern สำคัญสำหรับ research agents เพราะช่วยลด context noise และลดโอกาสให้ข้อมูลไม่เกี่ยวข้องพา agent หลุดทาง [Anthropic Docs](https://docs.anthropic.com/en/docs/build-with-claude/tool-use/web-search-tool)
- 🔐 MCP security papers เตือนว่า tool metadata, permission, server trust และ protocol conformance ต้องกลายเป็น checklist จริงก่อนเปิด MCP ให้ทีมกว้าง [Hugging Face Papers](https://huggingface.co/papers?q=Model+Context+Protocol+%28MCP%29)

## น่าลอง/น่าอ่านต่อ

- ⚙️ ทำ Copilot model routing rule: quick explanation ใช้ fast model, risky code change ใช้ stronger coding model, security review ใช้ model + scanner + human gate [GitHub Changelog](https://github.blog/changelog/2026-07-21-gemini-3-6-flash-is-now-available-in-github-copilot/)
- 🧪 ทดลอง search-filter loop: query → filter relevance → cite only retained sources → produce answer พร้อม “dropped because” log สั้น ๆ [Anthropic Docs](https://docs.anthropic.com/en/docs/build-with-claude/tool-use/web-search-tool)
- 📖 อ่าน MCP security/benchmark cluster บน Hugging Face เพื่อหา eval cases สำหรับ tool poisoning, prompt injection และ wrong-tool selection [Hugging Face Papers](https://huggingface.co/papers?q=Model+Context+Protocol+%28MCP%29)

## เทคนิค/Skills/Workflow น่าลอง

- ⚡ สถานการณ์: งาน IDE มีทั้งถามเร็วและแก้จริง; Pattern: model ladder; Template: “Classify task: explain/refactor/security/migration. Pick model tier. Record reason.”; Verify: sample cost vs accepted outcome [GitHub Changelog](https://github.blog/changelog/2026-07-21-gemini-3-6-flash-is-now-available-in-github-copilot/)
- 🔎 สถานการณ์: agent research ใช้ web/tool เยอะ; Pattern: dynamic filtering; Example: “Keep only primary source, publication date, API behavior, and implementation steps; drop opinion-only summaries.” [Anthropic Docs](https://docs.anthropic.com/en/docs/build-with-claude/tool-use/web-search-tool)
- 🔐 สถานการณ์: เพิ่ม MCP server ใหม่; Pattern: server intake card; ระบุ owner, tools exposed, auth scope, logging, rate limit, conformance test และ allowed repos ก่อนเปิดใช้ [Hugging Face Papers](https://huggingface.co/papers?q=Model+Context+Protocol+%28MCP%29)

## มุมมองสำหรับ Solution Architect

- 🏛️ Multi-model Copilot/agent workflow ต้องมี routing policy ที่ audit ได้ ไม่อย่างนั้น cost optimization จะกลายเป็น guesswork ของแต่ละ developer [GitHub Changelog](https://github.blog/changelog/2026-07-21-gemini-3-6-flash-is-now-available-in-github-copilot/)
- 🧱 Search-capable agents ควรมี retrieval budget, filtering step, citation requirement และ refusal path เมื่อ source quality ไม่พอ [Anthropic Docs](https://docs.anthropic.com/en/docs/build-with-claude/tool-use/web-search-tool)
- 🛡️ MCP adoption ควรเดินคู่กับ threat model เพราะ protocol ที่ทำให้ต่อ tool ง่ายขึ้นก็เพิ่ม blast radius ของ tool poisoning และ permission leakage [Hugging Face Papers](https://huggingface.co/papers?q=Model+Context+Protocol+%28MCP%29)

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: วันนี้ไม่พบ Thai community item ที่มี source/code/benchmark ใหม่ชัดพอ จึงไม่ยก Facebook engagement เป็นสัญญาณคุณภาพ [TechTalkThai](https://www.techtalkthai.com/)
- 🇹🇭 ทีมไทยที่เริ่มใช้หลายโมเดลควรทำคู่มือภาษาไทยแบบสั้น: เลือก model ตาม risk/cost, ห้ามส่ง secret, MCP ต้องผ่าน owner approval, และ PR ต้องมี evidence [Anthropic Docs](https://docs.anthropic.com/en/docs/about-claude/models/choosing-a-model)
