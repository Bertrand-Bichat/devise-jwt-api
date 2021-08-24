# Ruby backend with Devise + JWT to manage users via API

## Run locally

```bash
git clone git@github.com:Bertrand-Bichat/devise-jwt-api.git
cd devise-jwt-api
bundle install
yarn install
touch .env
bundle exec rails secret (your token to use JWT with Devise)
DEVISE_SECRET_KEY=YOUR_TOKEN (.env file)
rails db:create db:migrate db:seed
rails s
http://localhost:3000/
```

## Create new user
```bash
curl -XPOST -H "Content-Type: application/json" -H "Authorization: bearer YOUR_TOKEN" -d '{ "user": { "email": "YOUR_EMAIL", "password": "YOUR_PASSWORD" } }' http://localhost:3000/signup
```

## Login existing user
```bash
curl -XPOST -H "Content-Type: application/json" -d '{ "user": { "email": "YOUR_EMAIL", "password": "YOUR_PASSWORD" } }' http://localhost:3000/login
```

## Logout
```bash
curl -XDELETE -H "Content-Type: application/json" -d '{ "user": { "email": "YOUR_EMAIL" } }' http://localhost:3000/logout
```
