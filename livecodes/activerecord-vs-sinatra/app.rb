require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# In Sinatra the router and the controller are in the same file

get '/' do
  @restaurants = Restaurant.all

  erb :index
end

get '/restaurants/:id' do
  # params will be a hash like this one: { id: '41'}
  id = params[:id]
  # Find the restaurant in the DB
  @restaurant = Restaurant.find(id) # id is automatically converted to integer
  # Tell the view to display the restaurant
  erb :show
end

post '/restaurants' do
  # params will be a hash like this one: { name: 'Ichiran', city: 'Fukuoka'}

  name = params[:name]
  city = params[:city]

  restaurant = Restaurant.new(name: name, city: city)
  restaurant.save

  redirect "/restaurants/#{restaurant.id}"
end
