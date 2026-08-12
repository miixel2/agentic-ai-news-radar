# Agentic AI News Radar - 2026-08-09

## ข่าวสำคัญ

- 🔌 ช่วง 24-72 ชม. ล่าสุดยังไม่มี launch agent ใหญ่ใหม่ แต่ MCP `2026-07-28` ยังเป็นงานเร่ง: stateless core, MRTR, header routing, cacheable lists และ auth hardening [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧭 GitHub MCP Server รองรับ spec ใหม่แล้ว ทำให้ทีมที่ใช้ Copilot/IDE agents ควรเริ่มเช็ก compatibility ของ MCP servers ภายใน [GitHub Changelog](https://github.blog/changelog/2026-07-23-github-mcp-server-supports-the-next-mcp-specification/)
- 🧱 AWS AgentCore Gateway รองรับ MCP `2026-07-28` และย้ำว่า stateless MCP ทำให้ agent tools scale บน HTTP/load balancer ได้ง่ายขึ้น [AWS](https://aws.amazon.com/blogs/machine-learning/how-agentcore-gateway-supports-the-mcp-2026-07-28-spec/)

## ทำไมควรรู้

- 🔌 MCP รุ่นใหม่ลดภาระ session/sticky routing แต่ breaking change อยู่ที่ transport, headers, auth และ deprecation ของบาง primitive [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧭 ถ้าองค์กรมี Copilot, Claude, Codex, Cursor หรือ custom agent ต่อเครื่องมือเดียวกัน MCP compatibility จะเริ่มกลายเป็น shared platform requirement [GitHub Changelog](https://github.blog/changelog/2026-07-23-github-mcp-server-supports-the-next-mcp-specification/)
- 🛡️ การย้าย agent tools ไปเป็น HTTP workload ต้องเพิ่ม gateway policy, audit log, tool-level authorization และ regression tests ไม่ใช่แค่เปลี่ยน SDK [AWS](https://aws.amazon.com/blogs/machine-learning/how-agentcore-gateway-supports-the-mcp-2026-07-28-spec/)

## น่าลอง/น่าอ่านต่อ

- ✅ อ่าน official MCP changelog แล้วแยก server ภายในเป็น 3 กลุ่ม: read-only, approval-required, write/destructive [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧪 ใช้ conformance/smoke tests กับ MCP server สำคัญ: `tools/list`, read-only call, approval path, auth deny, cache headers, log trace [GitHub Changelog](https://github.blog/changelog/2026-07-23-github-mcp-server-supports-the-next-mcp-specification/)
- 🏗️ ดู AgentCore Gateway เป็นตัวอย่าง production pattern สำหรับ protocol versioning และ gateway policy [AWS](https://aws.amazon.com/blogs/machine-learning/how-agentcore-gateway-supports-the-mcp-2026-07-28-spec/)

## เทคนิค/Skills/Workflow น่าลอง

- 🔌 สถานการณ์: custom MCP server ก่อน migration; Pattern: protocol smoke checklist; Template: “discover/list/call/auth-deny/approval/replay”; Verify: เก็บ protocol version ใน CI artifact [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧭 สถานการณ์: tool catalog ใหญ่ทำให้ prompt cache พัง; Pattern: deterministic tool list + cache TTL; Caveat: ตรวจว่า cache ไม่ซ่อน permission change [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🛡️ สถานการณ์: write tool หรือ admin tool; Pattern: header/gateway policy before body parsing; Verify: reject ที่ gateway ได้โดยไม่ต้อง inspect JSON payload [GitHub Changelog](https://github.blog/changelog/2026-07-23-github-mcp-server-supports-the-next-mcp-specification/)

## มุมมองสำหรับ Solution Architect

- 🏛️ Treat MCP เป็น integration layer ของ enterprise agents: versioning, auth, logging, cost attribution, ownership และ deprecation plan ต้องอยู่ใน architecture board [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 📌 Slice แรกที่คุ้มที่สุดคือ MCP inventory + smoke tests ก่อน ไม่ควรเริ่มจาก rewrite agent ทั้งก้อน [AWS](https://aws.amazon.com/blogs/machine-learning/how-agentcore-gateway-supports-the-mcp-2026-07-28-spec/)

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: DevHub มีบทความภาษาไทยเรื่อง Harness Engineering/Codex ที่ใช้เป็น learning material สำหรับทำ repo ให้ agent อ่านง่ายขึ้น [DevHub](https://devhub.in.th/en/blog/openai-harness-engineering-codex-zero-code)
- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: Techsauce Global Summit 2026 จะจัด 26-28 ส.ค. ที่ QSNCC เหมาะติดตาม enterprise AI/Thailand ecosystem มากกว่าใช้เป็นแหล่ง technical claim [Techsauce Summit](https://summit.techsauce.co/)
- 🇹🇭 ข้อเสนอ: ทีมไทยที่เริ่ม agent pilot ควรเริ่มจาก read-only internal knowledge tool + approval ภาษาไทย + audit dashboard ก่อนเปิด write actions
