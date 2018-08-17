# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rails db:seed
unless Customer.exists?(email: "hectorgool@gmail.com")
  customer = Customer.create!(email: "hectorgool@gmail.com", password: "asdfasdf")
  Wallet.create!(customer_id: customer.id, fondos: "10000.00")
end

unless Customer.exists?(email: "hgo280377@hotmail.com")
  customer = Customer.create!(email: "hgo280377@hotmail", password: "asdfasdf")
  Wallet.create!(customer_id: customer.id, fondos: "0.00")
end
