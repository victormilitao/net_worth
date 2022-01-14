# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

wege = Stock.first_or_create(name: "WEGE", initials: "WEGE3", price: 30)
itub = Stock.first_or_create(name: "ITUB", initials: "ITUB3", price: 35)
radl = Stock.first_or_create(name: "RADL", initials: "RADL3", price: 20)

user = User.first_or_create(name: "Victor", email: "victormilitao@gmail.com")

UserPatrimony.find_or_create_by(user_id: user.id, stock_id: wege.id, quantity: 100)
UserPatrimony.find_or_create_by(user_id: user.id, stock_id: itub.id, quantity: 300)
UserPatrimony.find_or_create_by(user_id: user.id, stock_id: radl.id, quantity: 200)
