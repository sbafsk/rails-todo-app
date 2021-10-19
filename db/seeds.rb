# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

peter = User.create(username: "peter", password: "123123")
dave = User.create(username: "dave", password: "123123")

peter.tasks.create(title: "Drop it like it's hot",
  detail: "whatever...")

dave.tasks.create([{title: "Drop it like it's cold",
detail: "whatever..."}, {title: "Drop it like it's freeze",
  detail: "whatever..."}])
