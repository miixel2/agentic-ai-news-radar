# Agentic AI News Radar — 2026-10-27

## ข่าวสำคัญ

- 🔐 GitHub เพิ่ม [server-to-server authentication สำหรับ Copilot](https://github.blog/changelog/?label=copilot&opened-months=10); การเชื่อม agent/service จึงควรใช้ credential lifecycle ที่ตรวจสอบได้ แทน shared user token

## ทำไมควรรู้

- 🪪 machine identity ที่ชัดทำให้ revoke, audit และ least privilege ทำได้จริงเมื่องาน agent ข้ามระบบ

## น่าลอง/น่าอ่านต่อ

- 📚 ติดตาม [GitHub Copilot Changelog](https://github.blog/changelog/?label=copilot&opened-months=10) และตรวจ setup ขององค์กรตาม release ที่ใช้งาน

## เทคนิค/Skills/Workflow น่าลอง

- 🔑 Pattern: “Per-agent credential ledger” — credential ผูก agent, scope, TTL, owner และ revoke procedure; ใช้กับ MCP/API tools; verify ด้วย forced revocation drill

## มุมมองสำหรับ Solution Architect

- 🧱 อย่าให้ agent impersonate human โดย default; propagate workload identity ลง audit trail ทุก tool call

## Thai Ecosystem Watch

- 🇹🇭 สำหรับองค์กรที่มีระบบ legacy ให้เริ่มด้วย API gateway ที่บังคับ scope และ logging แทนให้ agent เข้า database ตรง
