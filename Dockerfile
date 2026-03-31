FROM josh5/unmanic:latest

# Install build dependencies (needed for numpy/scipy on ARM especially)
RUN apt-get update && apt-get install -y \
    build-essential \
    python3-dev \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Install ffsubsync
RUN pip3 install --no-cache-dir ffsubsync