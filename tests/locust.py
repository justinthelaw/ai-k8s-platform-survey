from locust import HttpUser, task


class ChatCompletionsUser(HttpUser):
    @task
    def chat_completions(self):
        result = self.client.post(
            "/v1/chat/completions",
            data='{"model": "TinyLlama/TinyLlama-1.1B-Chat-v1.0", "messages": [{"role": "system", "content": "You are a helpful assistant."},{"role": "user", "content": "Provide a brief sentence describing Unicorns and Tacos."}],"temperature": 0.8}',
            verify=False,
        )
        print(f"result ({self.wait_time}): {result.text}")
