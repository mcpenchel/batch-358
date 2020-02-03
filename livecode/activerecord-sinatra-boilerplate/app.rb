require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurant/:id" do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end

get "/restaurants/new" do
  erb :new
end

post "/restaurants" do
  Restaurant.create(params)
  redirect "/"
end
