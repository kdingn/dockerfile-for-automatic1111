FROM nvidia/cuda:12.1.0-base-ubuntu22.04

RUN apt update && apt install -y \
  build-essential \
  curl \
  git \
  libbz2-dev \
  libffi-dev \
  libgl1-mesa-dev \
  libglib2.0-0 \
  liblzma-dev \
  libssl-dev \
  libsqlite3-dev \
  zlib1g-dev

RUN cd / && \
  curl -OL https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tgz && \
  tar -xf Python-3.10.6.tgz && \
  cd /Python-3.10.6 && \
  ./configure --enable-optimizations && \
  make -j $(nproc) && \
  make install && \
  cd /usr/local/bin && \
  ln -s /usr/local/bin/python3.10 python

RUN cd / && \
  git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

RUN cd / && \
  touch start.sh && \
  echo "#!/usr/bin/env bash" > start.sh && \
  echo "cd /stable-diffusion-webui" >> start.sh && \
  echo "python launch.py --skip-torch-cuda-test --xformers --reinstall-xformers --listen --enable-insecure-extension-access --precision full --no-half" >> start.sh && \
  chmod a+x start.sh

CMD ["/start.sh"]
