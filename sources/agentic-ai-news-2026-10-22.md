# Agentic AI News Radar — 2026-10-22

## ข่าวสำคัญ

- 🧠 Microsoft เผย [vector stores ใน Agent Framework for Python](https://devblogs.microsoft.com/agent-framework/vector-stores-in-python-agent-framework-familiar-foundations-streamlined-for-agents/) โดยทำ search เป็น first-class tool พร้อม filters และ approval behavior

## ทำไมควรรู้

- 🧩 retrieval สำหรับ agent ต้องควบคุม result shape และ authorization เช่นเดียวกับ tool อื่น ไม่ใช่ถือว่า vector DB ปลอดภัยโดยอัตโนมัติ

## น่าลอง/น่าอ่านต่อ

- 📚 อ่าน [Microsoft Agent Framework post](https://devblogs.microsoft.com/agent-framework/vector-stores-in-python-agent-framework-familiar-foundations-streamlined-for-agents/) เพื่อเทียบ provider/context boundary กับ Semantic Kernel เดิม

## เทคนิค/Skills/Workflow น่าลอง

- 🔍 Pattern: “Retrieval as approved tool” — expose search ผ่าน tool name/description/filter ที่ชัด; เหมาะกับ KB หลาย tenant; verify ด้วย cross-tenant and stale-document tests

## มุมมองสำหรับ Solution Architect

- 🪪 ผูก retrieval identity กับ end user/agent role; อย่าให้ shared embedding index กลายเป็นทางข้าม data boundary

## Thai Ecosystem Watch

- 🇹🇭 สำหรับเอกสารไทย ควรวัด retrieval แยกตามภาษา, การตัดคำ และชื่อเฉพาะ; hit-rate ภาษาอังกฤษไม่ใช่ proxy ของภาษาไทย
