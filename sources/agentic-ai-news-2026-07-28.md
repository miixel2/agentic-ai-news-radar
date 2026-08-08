# Agentic AI News Radar - 2026-07-28

## ข่าวสำคัญ

- 🔌 MCP 2026-07-28 final ออกแล้ว: stateless core, Multi Round-Trip Requests, header-based routing, cacheable list results, Tasks extension, authorization hardening และ SDK Tier 1 ที่อัปเดตแล้ว [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧩 Anthropic/Claude เริ่ม rollout support MCP 2026-07-28 โดยเน้น stateless core และ extensions สำหรับ Claude apps/platform [Claude Blog](https://claude.com/blog/bringing-mcp-2026-07-28-to-claude)
- 🛠️ MCP Go SDK v1.7.0 รองรับ protocol ใหม่ โดย preserve backward compatibility กับเวอร์ชันเก่า [GitHub Releases](https://github.com/modelcontextprotocol/go-sdk/releases)

## ทำไมควรรู้

- 🚦 Gateway/WAF สามารถ route และ authorize ตาม `Mcp-Method`/`Mcp-Name` headers ได้ ลดการ parse body เพื่อควบคุม tool traffic [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🔁 MRTR ทำให้ tool ขอ input/approval ระหว่างทางได้บน protocol stateless แทนการพึ่ง stream ที่เปิดค้าง [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧾 Cacheable tool/resource lists ช่วยลด context churn และช่วยให้ prompt cache เสถียรขึ้นสำหรับ agent clients [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)

## น่าลอง/น่าอ่านต่อ

- 🔌 อ่าน spec note แล้วกำหนด policy: tool ไหนเรียกได้, tool ไหนต้อง approval, tool ไหนต้อง block ที่ gateway [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧩 ทดสอบ Claude/Codex/Cursor/VS Code client ที่ใช้อยู่กับ MCP server ใหม่ทีละตัวก่อนเปิดให้ทั้งทีม [Claude Blog](https://claude.com/blog/bringing-mcp-2026-07-28-to-claude)
- 🛠️ ถ้าใช้ Go SDK ให้ทดสอบ `StreamableHTTPOptions.Stateless = true` ใน staging ก่อน production [GitHub Releases](https://github.com/modelcontextprotocol/go-sdk/releases)

## เทคนิค/Skills/Workflow น่าลอง

- 🔐 สถานการณ์: MCP ผ่าน enterprise gateway; Pattern: header policy; Example: allow `tools/list`, rate-limit `tools/call`, require approval for `deploy` tool; Verify: gateway logs show method/name [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🔁 สถานการณ์: tool ต้องถามยืนยัน; Pattern: MRTR approval; Template: “If destructive action, return input_required with reason/options; client retries with signed approval”; Caveat: log approval identity [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧾 สถานการณ์: tool catalog ใหญ่; Pattern: cache hints; Verify: list order deterministic และ cache invalidation ชัดเจน [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)

## มุมมองสำหรับ Solution Architect

- 🏛️ MCP 2026-07-28 ทำให้ agent integration เข้าใกล้ web architecture ปกติ: stateless, routable, cacheable, governable [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🧯 Breaking changes ควรถูกจัดเป็น migration project ขนาดเล็กพร้อม staging matrix ไม่ใช่อัปเดต SDK แบบเงียบ ๆ [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: ยังไม่พบประกาศไทยที่วิเคราะห์ MCP final เชิงลึกในวันนี้; สำหรับทีมไทยควรแชร์สรุปภายในเรื่อง stateless MCP, auth และ gateway policy ก่อนให้หลายทีมต่อ tools เอง [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
- 🇹🇭 Evergreen: ทำ glossary ไทยสั้น ๆ สำหรับ MCP: tool, resource, prompt, task, authorization, approval, gateway เพื่อให้ product/security คุยกับ dev รู้เรื่องเดียวกัน [MCP Blog](https://blog.modelcontextprotocol.io/posts/2026-07-28/)
