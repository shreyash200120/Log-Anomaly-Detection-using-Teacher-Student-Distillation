# 🤖 RAG-Based Document Chatbot

A **Retrieval-Augmented Generation (RAG)** chatbot that allows users to upload documents and ask questions grounded strictly in the uploaded content.  
The application is built with **Streamlit**, **LangChain**, **ChromaDB**, and **OpenAI**.

This project focuses on **clarity, correctness, and interview-readiness**, rather than demo-heavy complexity.

---

## 🚀 Features

- Upload documents (`PDF`, `TXT`, `DOCX`, `CSV`)
- Automatic document chunking and embedding
- Vector-based semantic retrieval using **ChromaDB**
- Conversational question answering with memory
- Displays **source documents** used to generate each answer
- Simple, clean Streamlit UI

---

## 🧠 How It Works (RAG Pipeline)

1. **Document Ingestion**  
   Uploaded documents are temporarily stored and loaded using LangChain document loaders.

2. **Text Chunking**  
   Documents are split into overlapping chunks using `RecursiveCharacterTextSplitter`.

3. **Embedding Generation**  
   Each chunk is converted into embeddings using **OpenAI Embeddings**.

4. **Vector Store**  
   Embeddings are stored in **ChromaDB** for efficient similarity search.

5. **Retrieval + Generation**  
   - Relevant chunks are retrieved based on the user query  
   - An LLM generates the final answer using only retrieved context  
   - Chat history is maintained for conversational continuity

---

## 🛠 Tech Stack

- **Python**
- **Streamlit** – UI
- **LangChain** – RAG orchestration
- **ChromaDB** – Vector database
- **OpenAI** – LLM & embeddings

---

## 📂 Project Structure

```text
RAG_chatbot/
├── RAG_app.py
├── README.md
├── requirements.txt
├── data/
│   ├── tmp/              # Temporary uploaded files
│   └── vector_store/     # Generated at runtime (gitignored)
└── .gitignore

---

## ▶️ How to Run

1. Install dependencies
pip install -r requirements.txt

2. Run the app
streamlit run RAG_app.py

3. Usage

Enter your OpenAI API key

Upload documents

Create vector store

Start chatting with your data

---

## 🔐 API Keys

OpenAI API key is required

Keys are never stored and are provided at runtime

.env files and vector stores should be excluded from version control

---

## 📌 Design Decisions

Single LLM provider for simplicity and explainability

Single retriever strategy for interview clarity

Vector store generated dynamically (not committed)

Focus on core RAG concepts, not demo overload

---
