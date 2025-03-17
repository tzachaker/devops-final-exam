# Stage 1: Build stage
FROM python:3.8-slim AS builder

WORKDIR /app

# Copy the requirements file first and install dependencies
COPY requirements.txt ./ 

# נתקין את החבילות לתוך /python_packages כדי שנוכל להעתיק אותן אחר כך
RUN pip install --no-cache-dir --target=/python_packages -r requirements.txt

# Stage 2: Final stage
FROM python:3.8-slim

WORKDIR /app

# מעתיקים את התלויות לנתיב הנכון
COPY --from=builder /python_packages /usr/local/lib/python3.8/site-packages
COPY . /app

# Set environment variables for AWS credentials (as environment variables)
ENV AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
ENV AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}
ENV FLASK_APP=app.py

# Expose port 5002
EXPOSE 5002

# Run the app
CMD ["flask", "run", "--host=0.0.0.0", "--port=5002"]
