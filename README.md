# User Management API Microservice

A simple user management API built with Flask, SQLAlchemy, PostgreSQL — containerized with Docker.

---

## Features

- Create, read, update, and delete users
- PostgreSQL database integration
- Fully Dockerized using Docker Compose

---

## Getting Started

### Prerequisites
- [Docker](https://www.docker.com/products/docker-desktop)

### Setup & Run
Clone the repo and run:

```
git clone https://github.com/mkskart/user-management-api.git
cd user-management-api
docker-compose up --build
```

Your API will be live at:  
**http://localhost:5000**

---

## API Endpoints

| Method | Endpoint             | Description         |
|--------|----------------------|---------------------|
| GET    | /users               | Get all users       |
| POST   | /users               | Create a user       |
| GET    | /users/<id>          | Get a specific user |
| PUT    | /users/<id>          | Update a user       |
| DELETE | /users/<id>          | Delete a user       |

---

## Example Usage

### Create a User (POST)
```bash
curl -X POST http://localhost:5000/users \
     -H "Content-Type: application/json" \
     -d '{"name": "Kartheek", "email": "kartheek@example.com"}'
```

### Get All Users (GET)
```bash
curl http://localhost:5000/users
```

### Get Single User (GET)
```bash
curl http://localhost:5000/users/1
```

### Update a User (PUT)
```bash
curl -X PUT http://localhost:5000/users/1 \
     -H "Content-Type: application/json" \
     -d '{"name": "Kartheek M.", "email": "kartheekm@example.com"}'
```

### Delete a User (DELETE)
```bash
curl -X DELETE http://localhost:5000/users/1
```

---

## Tech Stack

- Python 3.11
- Flask
- SQLAlchemy
- PostgreSQL (Dockerized)
- Docker & Docker Compose

---

💡 Bonus: You can import this API into Postman for easy testing or use the provided curl commands above.
