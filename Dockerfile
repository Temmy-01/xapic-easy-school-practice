# Stage 1: Build stage
FROM python:3.9-slim AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the working directory
COPY . .

# Stage 2: Production stage
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy only the installed dependencies from the build stage
COPY --from=build /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages

# Copy the rest of the application code to the working directory
COPY --from=build /app /app

# Expose the port that Django runs on (usually 8000)
EXPOSE 8000

# Run Django's development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
