# Use official Python image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy FastAPI app code into container
COPY . .

# Expose FastAPI port (8000)
EXPOSE 8080

# Run FastAPI app
CMD ["uvicorn", "fastapi_ollama:app", "--host", "0.0.0.0", "--port", "8080"]
