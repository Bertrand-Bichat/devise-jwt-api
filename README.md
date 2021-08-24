# Ruby backend with Devise + JWT to manage users via API

## Create new user
```bash
curl -XPOST -H "Content-Type: application/json" -d '{ "user": { "email": "YOUR_EMAIL", "password": "YOUR_PASSWORD" } }' http://localhost:3000/signup
```

## Login existing user
```bash
curl -XPOST -H "Content-Type: application/json" -d '{ "user": { "email": "YOUR_EMAIL", "password": "YOUR_PASSWORD" } }' http://localhost:3000/login
```

## Logout
```bash
curl -XDELETE -H "Content-Type: application/json" -d '{ "user": { "email": "YOUR_EMAIL", "password": "YOUR_PASSWORD" } }' http://localhost:3000/logout
```
