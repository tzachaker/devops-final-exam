# Stage 1: Build stage
FROM python:3.8-slim AS builder

WORKDIR /app

# Copy the requirements file first and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Stage 2: Final stage
FROM python:3.8-slim

WORKDIR /app

# Copy the installed dependencies from the builder stage
COPY --from=builder /root/.local /root/.local
COPY . /app

# Set environment variables for AWS credentials (as environment variables)
ENV AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
ENV AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}
ENV FLASK_APP=app.py

# Expose port 5001
EXPOSE 5001

# Run the app
CMD ["flask", "run", "--host=0.0.0.0", "--port=5001"]
