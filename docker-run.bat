docker run -it ^
  --name automatic1111 ^
  -v D:/docker-automatic1111/outputs:/stable-diffusion-webui/outputs ^
  -v D:/docker-automatic1111/models/Stable-diffusion:/stable-diffusion-webui/Stable-diffusion ^
  -v D:/docker-automatic1111/models/Lora:/stable-diffusion-webui/Lora ^
  -p 7860:7860 ^
  --gpus all ^
  automatic1111