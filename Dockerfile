# Use the official Python image from the Docker Hub
FROM python:3.9

# Set the working directory
WORKDIR /usr/src/app

# Copy only the requirements.txt file to leverage caching more effectively
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Command to run the tests (override this with docker-compose for different commands)
CMD ["pytest"]