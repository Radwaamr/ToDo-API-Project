# Todo Application with Node.js, MongoDB, and Docker

## Project Summary

This is a Todo Application built with **Node.js**, **MongoDB**, and **Express**. The app allows you to add, update, and delete tasks. Docker is used to create a consistent and portable development environment for easy deployment.

## Steps Followed

### 1. Project Setup
- Initialized the project using `npm init -y`.
- Installed necessary dependencies: `express`, `mongoose`.

### 2. Code Implementation
- Built a simple API using **Express** and **Mongoose** to manage tasks.

### 3. Docker Configuration
- Created a **Dockerfile** to set up the environment.
- Created a **.dockerignore** to exclude unnecessary files during Docker build.

### 4. Network and MongoDB Setup
- Created a **Docker network** to connect the app with MongoDB.

### 5. Running the App with Docker
- Built the Docker image using:
  ```bash
  docker build -t todo .
  
- Ran both the app and MongoDB in containers:
  ```bash
  docker run -d --name mongo --network my-network -p 27017:27017 mongo
  docker run -d -p 3070:3000 --name todo --network my-network todo

