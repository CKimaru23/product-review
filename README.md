# Product Review App
This is a simple app for reviewing products. Users can review products they've used and see reviews from other users.

## Installation
To install the app, clone the repository and run bundle install to install the required gems:

    ```rb
        $ git clone https://github.com/CKimaru23/product-review.git
        $ cd product-review-app
        $ bundle install
    ```
Then, run the database migrations and seed the database:

    ```rb
        $ bundle exec rake db:migrate db:seed
    ```
This will create the database tables and add some sample data to the database.

## Usage
To run the app, start the rake server:

    ```rb
        $ bundle exec rake server
    ```
Then, open a web browser and navigate to http://localhost:9292/ to see the home page (though not connected to the front-end)

## ERD
This is a sample application for managing product reviews. The following is an Entity Relationship Diagram (ERD) for the database schema used in this application:

![ERD - Diagram](https://github.com/CKimaru23/product-review/blob/main/ERD.png)


## Models
The app has three models:

## a)Product
A Product has many Reviews and many Users through reviews.

## Attributes
    ```rb
        name (string): the name of the product
        description (text): a description of the product
        price (decimal): the price of the product
    ```
    
## Associations
    ```rb
        has_many :reviews: a product has many reviews
        has_many :users, through: :reviews: a product has many users through reviews
    ```
## Methods
    ```rb
        leave_review(user, star_rating, comment): creates a new review for the product by the given user with the given star rating and comment.
        print_all_reviews: prints a list of all reviews for the product to the console.
        average_rating: returns the average star rating for all reviews of the product.
    ```
## b) User
A User has many Reviews and many Products through reviews.

## Attributes
    ```rb
        name (string): the name of the user
        email (string): the email address of the user
        age (integer): the age of the user
        location (string): the location of the user
        gender (string): the gender of the user
    ```
## Associations
    ```rb
        has_many :reviews: a user has many reviews
        has_many :products, through: :reviews: a user has many products through reviews
    ```
## Methods
    ```rb
        favorite_product: returns the product with the highest average rating from this user.
        remove_reviews(product): removes all reviews by the user for the given product.
    ```

## c) Review
A Review belongs to a Product and a User.

## Attributes
    ```rb
        star_rating (integer): the star rating (1-5) of the review
        comment (text): the text of the review
    ```
## Associations
    ```rb
        belongs_to :product: a review belongs to a product
        belongs_to :user: a review belongs to a user
    ```
## Methods
print_review: prints the review to the console.



## Contributing
Bug reports and pull requests are welcome on GitHub at **https://github.com/CKimaru23/product-review.git**. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License
The app is available as open source under the terms of the MIT License.




