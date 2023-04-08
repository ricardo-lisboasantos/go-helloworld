# Start from a base image with the Go runtime
FROM golang:latest

# Set the working directory to /app
WORKDIR /app

# Copy the local package files to the container's workspace
COPY . .

# Build the Go application
RUN go build -o go_hello_world

# Expose port 8080 for the application to listen on
EXPOSE 8080

# Run the Go application when the container starts
CMD ["./go_hello_world"]