puts "🌱 Seeding data..."

# Create 25 sample products
25.times do
  Product.create(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price(range: 0..100.0, as_string: true),
    description: Faker::Lorem.paragraph(sentence_count: 3),
  )
end

# Create 25 sample users
25.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    age: Faker::Number.between(from: 18, to: 65),
    location: Faker::Address.city,
    gender: Faker::Gender.binary_type,
  )
end

# Create 25 sample reviews
25.times do
  Review.create(
    star_rating: Faker::Number.between(from: 1, to: 5),
    comment: Faker::Lorem.sentence(word_count: 10),
    user_id: User.pluck(:id).sample,
    product_id: Product.pluck(:id).sample,
  )
end

puts "🌱 Done seeding!"
