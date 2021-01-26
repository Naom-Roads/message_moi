# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username:"Naoms1", password:"Password1")
User.create(username:"Naoms2", password:"Password2")
User.create(username:"Naoms3", password:"Password3")
User.create(username:"Naoms4", password:"Password4")
User.create(username:"Naoms5", password:"Password5")

Message.create(body:"Hi this is a message from me to you", user: User.first)
Message.create(body:"I got your messages, nice to meet you", user: User.last)
