# Agentic AI News Radar — 2026-10-28

## ข่าวสำคัญ

- 🧠 GitHub เปิด GA [Copilot Fusion](https://github.blog/changelog/2026-10-28-route-and-orchestrate-models-with-github-copilot-fusion/) ให้ route/orchestrate หลายโมเดลตามระดับ effort พร้อม admin model policy

- 🧰 GitHub ยังเปิด [Agentic Workflows GA และ controls สำหรับ plugins](https://github.blog/changelog/month/10-2026/); ให้คิดว่า workflow/skill เป็น supply-chain artifact ที่ต้องมี owner และ review

## ทำไมควรรู้

- 💸 routing อัตโนมัติอาจลดการสลับโมเดล แต่ billing ยังคิดตามโมเดลที่ใช้; ต้องตั้ง budget/usage telemetry ไม่เชื่อตัวเลข benchmark เพียงอย่างเดียว

## น่าลอง/น่าอ่านต่อ

- 📚 อ่าน [Copilot Fusion release](https://github.blog/changelog/2026-10-28-route-and-orchestrate-models-with-github-copilot-fusion/) และ [October changelog](https://github.blog/changelog/month/10-2026/)

## เทคนิค/Skills/Workflow น่าลอง

- 🔀 Pattern: “Cascade with acceptance test” — cheap model draft → deterministic/critic check → escalate เฉพาะ failure; ใช้กับงานจำนวนมาก; verify acceptance test กับ adversarial cases

- 🧩 Pattern: “Versioned workflow catalog” — publish skill/workflow พร้อม owner, permissions, eval และ deprecation; verify ทุก dependency และ plugin source

## มุมมองสำหรับ Solution Architect

- 📈 เปรียบเทียบ Fusion/auto-routing ด้วย cost per verified outcome, latency p95 และ review rework—not token count

## Thai Ecosystem Watch

- 🇹🇭 การใช้ local/cloud routing ไม่เท่ากับ offline หรือ PDPA compliant โดยอัตโนมัติ; ตรวจ routing metadata, data path และ model policy ก่อนเปิดใช้
