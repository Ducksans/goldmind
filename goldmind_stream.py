from langchain_community.llms import Ollama
from langchain_core.callbacks.base import BaseCallbackHandler

class StreamingStdoutHandler(BaseCallbackHandler):
    def on_llm_new_token(self, token: str, **kwargs) -> None:
        print(token, end="", flush=True)

def chat_with_goldmind(prompt):
    llm = Ollama(
        model="llama3",
        streaming=True,
        callbacks=[StreamingStdoutHandler()]
    )
    print("🤖 금강이의 응답:")
    llm.invoke(prompt)

if __name__ == "__main__":
    user_input = input("🤖 금강이에게 질문하세요: ")
    chat_with_goldmind(user_input)
