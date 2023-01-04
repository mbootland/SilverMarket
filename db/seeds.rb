# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Order.create!(
  user_id: 1,
  quantity: 3.5,
  price: 303,
  otype: :sell
)
Order.create!(
  user_id: 2,
  quantity: 1.2,
  price: 310,
  otype: :sell
)
Order.create!(
  user_id: 3,
  quantity: 1.5,
  price: 307,
  otype: :sell
)
Order.create!(
  user_id: 4,
  quantity: 2,
  price: 306,
  otype: :sell
)
