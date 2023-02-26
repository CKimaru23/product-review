class ApplicationController < Sinatra::Base
    set default_content_type: "application/json"

    get '/products' do
        products = Product.all
        products.to_json
    end

    # post '/products/new_product' do
    #     product = Product.create (
    #         name: params[:name],
    #         description: params[:description],
    #         price: params[:price],
    #         created_at: params[:created_at],
    #         updated_at: params[:updated_at]
    #     )
    #     product.to_json
    # end

    # update the name or description or price of a product
    patch '/products/:id' do
        product = Product.find(params[:id])
        product.update(
            name: params[:name],
            description: params[:description],
            price: params[:price]
        )
        product.to_json
    end

    # Delete a product
    delete 'products/:id' do
        product = Product.find(params[:id])
        product.destroy_all
        product.to_json
    end

    # #view rating and comment of a product
    # get '/products/:id' do
    #     product = Product.find(params[:id])
    #     product.to_json(only: [:id, :name, :description, :price], include: {reviews: {only: [:star_rating, :comment]}})
    # end

    #view rating and comment of a product plus the user
    get '/products/:id' do
        product = Product.find(params[:id])
        product.to_json(only: [:id, :name, :description, :price], include: {reviews: {only: [:star_rating, :comment], include: :user}})
    end

    # Gets all users from the database
    get '/users' do
        users = User.all
        users.to_json
    end

    # post '/users' do
    #     user = User.create (
    #         name: params[:name],
    #         email: params[:email],
    #         location: params[:location],
    #         age: params[:age],
    #         gender: params[:gender]
    #     )

    #     user.to_json
    # end

    patch '/users/:id' do
        user = User.find(params[:id])
        user.update(
            name: params[:name],
            email: params[:email],
            location: params[:location],
            age: params[:age],
            gender: params[:gender]
        )

        user.to_json
    end

    delete '/users/:id' do
        user = User.find(params[:id])
        user.destroy
        user.to_json
    end

    post '/reviews' do
        review = Review.create(
            star_rating: params[:star_rating],
            comment: params[:comment]
        )

        review.to_json
    end

    patch '/reviews/:id' do
        review = Review.find(params[:id])
        review.update(
            star_rating: params[:star_rating],
            comment: params[:comment]
        )

        review.to_json
    end

    get '/reviews' do
        reviews = Review.all
        reviews.to_json
    end

    delete '/reviews/:id' do
        review = Review.find(params[:id])
        review.destroy
        revuew.to_json
    end

end