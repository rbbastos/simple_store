# frozen_string_literal: true

Product.destroy_all

676.times do
  prod = Product.create(title: Faker::Commerce.product_name,
                        price: Faker::Commerce.price,
                        stock_quantity: Faker::Number.within(range: 1..1000))
end

puts "Generated #{Product.count} products."
