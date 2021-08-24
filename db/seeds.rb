puts 'clean database...'

User.destroy_all

puts 'create users...'

User.create(email: "test@gmail.com", password: "password")

puts 'done !'
