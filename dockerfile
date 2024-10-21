# Step 1: Use an official Python runtime as a parent image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app
# Step 5: Copy requirements.txt into the container


# Step 6: Install Python dependencies from requirements.txt


# Step 7: Copy the rest of the application code
COPY . /app


RUN pip install  -r requirements.txt

# Step 8: Expose port 8000 for Django server
EXPOSE 8000

# Step 9: Command to run the Django application
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
