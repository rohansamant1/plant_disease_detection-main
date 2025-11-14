FROM python:3.9-slim

# Install minimal system dependencies
RUN apt-get update && apt-get install -y \
    libhdf5-dev \
    libjpeg-dev \
    zlib1g-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install TensorFlow CPU 2.10.0 (smallest TF version)
RUN pip install --no-cache-dir tensorflow-cpu==2.10.0

# Set working directory
WORKDIR /app

# Copy entire project
COPY . /app

# Install project dependencies (except TensorFlow)
RUN sed -i '/tensorflow/d' requirements.txt || true
RUN sed -i '/tensorflow-cpu/d' requirements.txt || true
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for Railway
EXPOSE 8000

# Run Flask app via gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
