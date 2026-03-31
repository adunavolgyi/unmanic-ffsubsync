FROM josh5/unmanic:latest

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip \
    python3-venv \
    build-essential \
    python3-dev \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /opt/ffsubsync-venv \
    && /opt/ffsubsync-venv/bin/pip install --upgrade pip setuptools wheel \
    && /opt/ffsubsync-venv/bin/pip install --no-cache-dir ffsubsync \
    && ln -s /opt/ffsubsync-venv/bin/ffsubsync /usr/local/bin/ffsubsync