require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/jokes" do
    Joke.all.to_json include: :reviews
  end

  post "/reviews" do
    Review.create

end
