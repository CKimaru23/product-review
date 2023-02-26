require_relative "../config/environment.rb"

# Returns the User instance for this Review
puts Review.first.user.name

# Returns the Product instance for this Review
# puts Review.first.product

# # Returns a collection of all the Reviews for the Product
# puts Product.first.reviews

# # Returns a collection of all the Users who reviewed the Product
# puts Product.first.users

# # Returns a collection of all the Reviews that the User has given
# puts User.first.reviews

# # Returns a collection of all the Products that the User has reviewed
# puts User.first.products

