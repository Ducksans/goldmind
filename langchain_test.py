from langchain.llms import Ollama

llm = Ollama(model="llama3")
prompt = input("🤖 금강이에게 질문하세요: ")
response = llm.invoke(prompt)
print("🧠 금강이의 응답:", response)
