# Agentic AI News Radar - 2026-07-11

## ข่าวสำคัญ

- 🛡️ GitHub Copilot สำหรับ VS Code และ CLI เพิ่ม enterprise-managed OpenTelemetry export ให้ admin บังคับ endpoint, protocol, headers และ policy เรื่อง prompt/response/tool content ได้จาก managed settings [GitHub Changelog](https://github.blog/changelog/2026-07-08-enterprise-managed-opentelemetry-export-for-vs-code-and-cli/)
- 🧰 GitHub เปิด device-level managed Copilot settings ผ่าน MDM/file/server-managed channels สำหรับ VS Code และ Copilot CLI ครอบคลุม permissions, model, plugins, marketplaces และ telemetry settings [GitHub Changelog](https://github.blog/changelog/2026-07-08-deploy-managed-copilot-settings-via-mdm-in-vs-code-and-cli/)
- 🧩 Copilot ใน JetBrains เพิ่ม Codex เป็น agent provider public preview, จัดการ Hooks/MCP servers ใน Agent Customizations และมี approval modes สำหรับ CLI sessions [GitHub Changelog](https://github.blog/changelog/2026-07-07-codex-as-agent-provider-and-agentic-enhancements-in-jetbrains-ides/)
- 📈 Copilot usage metrics API เพิ่ม review latency และ review cycles ตาม adoption phase ช่วยวัดผลกระทบของ AI ต่อกระบวนการ review ได้ละเอียดขึ้น [GitHub Changelog](https://github.blog/changelog/2026-07-07-add-review-cycles-and-time-to-adoption-phases-in-the-usage-api/)

## ทำไมควรรู้

- 🔭 Observability กลายเป็น control requirement ของ coding agents: องค์กรต้องเห็น trace, tool content policy และ session behavior โดยไม่ปล่อยให้ developer ตั้งเองทุกเครื่อง [GitHub Changelog](https://github.blog/changelog/2026-07-08-enterprise-managed-opentelemetry-export-for-vs-code-and-cli/)
- 🏢 MDM-managed settings ทำให้ Copilot governance เข้าใกล้มาตรฐาน endpoint management เดิม เช่น Intune/Jamf/Group Policy และลด drift ระหว่าง VS Code กับ CLI [GitHub Changelog](https://github.blog/changelog/2026-07-08-deploy-managed-copilot-settings-via-mdm-in-vs-code-and-cli/)
- 🤝 Codex/Claude/Copilot CLI อยู่ใน IDE เดียวกันมากขึ้น จึงต้องออกแบบ approval policy และ MCP/tool boundary ที่ไม่ผูกกับ vendor เดียว [GitHub Changelog](https://github.blog/changelog/2026-07-07-codex-as-agent-provider-and-agentic-enhancements-in-jetbrains-ides/)

## น่าลอง/น่าอ่านต่อ

- 🔐 อ่าน managed settings แล้วทำ baseline policy: ปิด bypass mode สำหรับ repo production, กำหนด model default, จำกัด marketplace/plugin และตั้ง telemetry export [GitHub Changelog](https://github.blog/changelog/2026-07-08-deploy-managed-copilot-settings-via-mdm-in-vs-code-and-cli/)
- 📡 ทดลองส่ง OTel traces จาก Copilot CLI/VS Code เข้า collector ภายใน แล้ว masking prompt/tool content ตาม policy ก่อนเข้า observability backend [GitHub Changelog](https://github.blog/changelog/2026-07-08-enterprise-managed-opentelemetry-export-for-vs-code-and-cli/)
- 🧩 อ่าน Claude Code docs เรื่อง settings, MCP, skills และ hooks เพื่อเทียบ pattern กับ Copilot Customizations และออกแบบ agent skill ที่ portable ข้ามเครื่องมือ [Claude Code Docs](https://code.claude.com/docs/en/overview)

## เทคนิค/Skills/Workflow น่าลอง

- 📡 สถานการณ์: ต้อง debug agent session; Pattern: trace-first RCA; Template: “Export session trace, identify tool calls, content exposure, approval events, retries, and final diff before accepting the PR.” [GitHub Changelog](https://github.blog/changelog/2026-07-08-enterprise-managed-opentelemetry-export-for-vs-code-and-cli/)
- 🛂 สถานการณ์: เปิด agent CLI ให้ทีม; Pattern: managed approval policy; ตั้งค่า default approvals สำหรับงานทั่วไป, block bypass/autopilot ใน repo สำคัญ, และให้ exception ผ่าน security review [GitHub Changelog](https://github.blog/changelog/2026-07-07-codex-as-agent-provider-and-agentic-enhancements-in-jetbrains-ides/)
- 🧰 สถานการณ์: ใช้ MCP servers หลายตัว; Pattern: workspace-scoped MCP; เก็บ `.github/mcp.json` เฉพาะ server ที่จำเป็น พร้อม health check และ owner ชัดเจน [GitHub Changelog](https://github.blog/changelog/2026-07-07-codex-as-agent-provider-and-agentic-enhancements-in-jetbrains-ides/)
- 🧪 สถานการณ์: วัด adoption; Pattern: review-flow metric; เทียบ review latency/cycles ก่อน-หลัง AI adoption แล้วตรวจ bug/rollback เพื่อกัน productivity illusion [GitHub Changelog](https://github.blog/changelog/2026-07-07-add-review-cycles-and-time-to-adoption-phases-in-the-usage-api/)

## มุมมองสำหรับ Solution Architect

- 🏛️ ภาพรวมสัปดาห์นี้ชัดมาก: agentic coding maturity ไม่ได้อยู่ที่ model อย่างเดียว แต่อยู่ที่ governance, observability, approval, MCP boundary, budget และ adoption metrics [GitHub Changelog](https://github.blog/changelog/2026-07-08-enterprise-managed-opentelemetry-export-for-vs-code-and-cli/)
- 🔒 ควรแยก policy เป็นสามระดับ: personal sandbox, team repo, regulated/production repo; แต่ละระดับควรมี approval mode, telemetry, allowed tools และ model policy ต่างกัน [GitHub Changelog](https://github.blog/changelog/2026-07-08-deploy-managed-copilot-settings-via-mdm-in-vs-code-and-cli/)
- 📊 ถ้าผู้บริหารถาม ROI ให้ใช้ชุดข้อมูลร่วมกัน: usage/adoption phase, budget state, PR throughput, review latency, review cycles, defect/rollback และ developer satisfaction [GitHub Changelog](https://github.blog/changelog/2026-07-07-add-review-cycles-and-time-to-adoption-phases-in-the-usage-api/)

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทยที่ตรวจสอบได้และมีเทคนิคเฉพาะยังบางในช่วงนี้; Blognone มี local enterprise AI framing จาก KBTG เรื่อง AI vs ROI ซึ่งเข้ากับประเด็น “agent ต้องวัดผลได้” มากกว่าการทดลองแบบไร้ metric [Blognone](https://www.blognone.com/topics/ai)
- 🇹🇭 สำหรับองค์กรไทยที่ใช้ Copilot/Codex/Claude Code ควรเริ่ม policy ภาษาไทยที่อ่านง่าย: ข้อมูลอะไรห้ามส่ง, repo ไหนห้าม autopilot, PR แบบไหนต้อง human review, และ trace เก็บที่ไหน [GitHub Changelog](https://github.blog/changelog/2026-07-08-enterprise-managed-opentelemetry-export-for-vs-code-and-cli/)
