require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/jokes" do
    Joke.all.to_json include: :reviews
  end

  post "/reviews" do
    Review.create(params)
    Review.to_json
  end

  delete "/reviews/:id" do
    Review = Review.find(params[:id])
    Review.destroy
    Review.to_json
  end

get "/" 

end
