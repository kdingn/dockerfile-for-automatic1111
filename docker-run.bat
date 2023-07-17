docker run -it ^
  --name automatic1111 ^
  -v D:/docker-automatic1111/00_output:/stable-diffusion-webui/outputs ^
  -v D:/docker-automatic1111/01_model:/stable-diffusion-webui/models/Stable-diffusion ^
  -v D:/docker-automatic1111/02_lora:/stable-diffusion-webui/models/Lora ^
  -v D:/docker-automatic1111/03_embedding:/stable-diffusion-webui/embeddings ^
  -v D:/docker-automatic1111/04_extension:/stable-diffusion-webui/extensions ^
  -p 7860:7860 ^
  --gpus all ^
  automatic1111