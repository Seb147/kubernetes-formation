# Install Docker Enging

bash ./install.sh

# Build the Docker image:

docker build -t test:latest .

# Run the container

docker run -p 127.0.0.1:8000:8000 test:latest

# Test

curl -i http://127.0.0.0:8000


