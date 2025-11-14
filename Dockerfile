FROM python:3.9

# Install system dependencies (important for TF)
RUN apt-get update && apt-get install -y \
    python3-dev \
    build-essential

# Install TensorFlow 2.10.0 CPU (last version supporting pip)
RUN pip install tensorflow-cpu==2.10.0

# Copy project
WORKDIR /app
COPY . /app

# Install other dependencies
RUN pip install -r requirements.txt --no-cache-dir || true

# Expose Flask port
EXPOSE 8000

# Start your app with Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
