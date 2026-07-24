# Agentic AI News Radar - 2026-07-19

## ข่าวสำคัญ

- 🧭 Google Cloud รวม 13 hands-on demos สำหรับ Gemini Enterprise Agent Platform ครอบคลุม ADK, MCP, human-in-the-loop, eval และ deployment pattern ที่เอาไปทดลองกับ coding agents ได้ทันที [Google Cloud](https://cloud.google.com/blog/products/ai-machine-learning/13-demos-on-gemini-enterprise-agent-platform)
- 🏗️ AWS เคส KTern.AI บน Amazon Bedrock AgentCore แสดงภาพ agentic SAP transformation แบบหลาย agent, persistent context, secure tool access และ reliability สำหรับงาน enterprise ที่ยาวและเสี่ยงสูง [AWS](https://aws.amazon.com/blogs/machine-learning/how-ktern-ai-built-agentic-ai-for-sap-on-amazon-bedrock-agentcore/)
- 🔐 OpenAI safety note เรื่อง long-horizon models ย้ำว่า agent ที่ทำงานนานต้อง monitor “trajectory” ไม่ใช่แค่ approve/reject ทีละ action [OpenAI](https://openai.com/index/safety-alignment-long-horizon-models/)
- 📊 LangChain State of Agent Engineering ระบุว่า production agent ต้องมี observability/evals เป็นงานหลัก ไม่ใช่ของเสริมหลัง launch [LangChain](https://www.langchain.com/state-of-agent-engineering)

## ทำไมควรรู้

- 🧩 Google demo ทำให้ ADK + MCP + eval + human review กลายเป็น reusable delivery pattern สำหรับทีมที่ยังติดอยู่กับ prototype agent [Google Cloud](https://cloud.google.com/blog/products/ai-machine-learning/13-demos-on-gemini-enterprise-agent-platform)
- 🧱 AWS case study ชี้ว่าค่าเพิ่มของ agent ในองค์กรไม่ได้อยู่ที่ตอบแชต แต่คือการ orchestrate งานโดเมนเฉพาะพร้อม policy, context และ tool boundary [AWS](https://aws.amazon.com/blogs/machine-learning/how-ktern-ai-built-agentic-ai-for-sap-on-amazon-bedrock-agentcore/)
- 🛡️ OpenAI เตือนว่า long-running agents อาจหาวิธีเลี่ยง guardrail ได้ถ้าวัดแค่ action เดี่ยว จึงต้องมี incident-derived eval และ pause/rollback path [OpenAI](https://openai.com/index/safety-alignment-long-horizon-models/)
- 🔍 LangChain พบว่า quality เป็น production killer สำคัญ และ observability adoption นำ evals อยู่มาก แปลว่าทีมควรปิด gap ด้าน scoring/evidence [LangChain](https://www.langchain.com/state-of-agent-engineering)

## น่าลอง/น่าอ่านต่อ

- 🧪 เริ่มจาก Google ambient expense agent codelab เพื่อดู pattern: pre-LLM security screen → compliance analysis → human approval → eval [Google Cloud](https://cloud.google.com/blog/products/ai-machine-learning/13-demos-on-gemini-enterprise-agent-platform)
- 🧰 อ่าน AWS AgentCore/SAP article แล้ว map งานองค์กรที่มี domain agents ได้ เช่น discovery, fit-gap, code analysis, exception mining [AWS](https://aws.amazon.com/blogs/machine-learning/how-ktern-ai-built-agentic-ai-for-sap-on-amazon-bedrock-agentcore/)
- 📚 เก็บ OpenAI long-horizon safety เป็น baseline สำหรับ policy ของ coding agents ที่รันข้ามวันหรือทำงานใน background [OpenAI](https://openai.com/index/safety-alignment-long-horizon-models/)

## เทคนิค/Skills/Workflow น่าลอง

- 🧭 สถานการณ์: agent ต้อง approve งานบางส่วน; Pattern: confidence-gated HITL; Template: “auto-approve under threshold, hold medium/high-risk items with rationale, log reviewer decision”; Verify: sampling decision logs ทุกสัปดาห์ [Google Cloud](https://cloud.google.com/blog/products/ai-machine-learning/13-demos-on-gemini-enterprise-agent-platform)
- 🔐 สถานการณ์: long-running coding agent; Pattern: trajectory monitor; Template: “Monitor goal drift, hidden credential use, repeated workaround attempts, and unverified success claims”; Caveat: ต้องมีปุ่ม pause/rollback จริง [OpenAI](https://openai.com/index/safety-alignment-long-horizon-models/)
- 📈 สถานการณ์: agent อยู่ production แล้วแต่คุณภาพแกว่ง; Pattern: observability-to-eval loop; เริ่มจาก trace failure → สร้าง eval case → rerun ก่อน deploy [LangChain](https://www.langchain.com/state-of-agent-engineering)

## มุมมองสำหรับ Solution Architect

- 🏛️ Agent platform ที่พร้อมใช้จริงต้องแยกชั้น agent logic, tool/MCP, identity, eval, observability และ human review gate ให้ชัดตั้งแต่แรก [Google Cloud](https://cloud.google.com/blog/products/ai-machine-learning/13-demos-on-gemini-enterprise-agent-platform)
- 🧯 Long-horizon safety ทำให้ architecture ต้องมี “session control plane”: visibility, pause, escalation, incident-derived eval และ rollout strategy [OpenAI](https://openai.com/index/safety-alignment-long-horizon-models/)
- 🧮 Framework selection ไม่ควรดู demo สวยอย่างเดียว ให้ดูว่าทีมจะวัด quality, cost, latency, tool failures และ adoption ได้จริงหรือไม่ [LangChain](https://www.langchain.com/state-of-agent-engineering)

## Thai Ecosystem Watch

- 🇹🇭 ข่าว/โพสต์จากชุมชนไทย: ช่วงวันนี้ไม่พบ public Thai technical post ใหม่ที่แรงพอในแหล่งที่เข้าถึงได้ จึงใช้ global primary sources เป็นหลักและเก็บ local watch ต่อ [TechTalkThai](https://www.techtalkthai.com/)
- 🇹🇭 สำหรับทีมไทยที่เริ่ม agent pilot ควรแปล policy เป็นภาษาไทยสั้น ๆ: scope, data boundary, human approval, budget owner, audit log และ escalation owner [OpenAI](https://openai.com/index/safety-alignment-long-horizon-models/)
