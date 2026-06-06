# Agentic AI News Dashboard

- 🌐 เปิดหน้า dashboard ที่ `index.html` เพื่อดูรายงานทั้งหมดแบบ offline
- 🔍 ค้นหาจากวันที่, tags และสรุปข่าวสั้น แล้วเลือกอ่าน daily page ใน reader panel
- 📝 ไฟล์ `sources\agentic-ai-news-YYYY-MM-DD.md` เป็น source of truth ของรายงานรายวัน
- 📄 ไฟล์ `daily\agentic-ai-news-YYYY-MM-DD.html` เป็นหน้าที่ generate จาก Markdown
- ⚙️ สร้าง dashboard และ daily pages ใหม่ด้วยคำสั่ง:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\build-dashboard.ps1
```

- 🧭 หลัง automation เขียนรายงาน Markdown ใหม่ลง `sources\` จะรัน generator นี้เพื่อ refresh `daily\` และ `index.html`
- 📦 `index.html` เก็บเฉพาะ metadata และ snippet สั้น ๆ จึงไม่ขยายตามเนื้อหารายงานทั้งหมด
