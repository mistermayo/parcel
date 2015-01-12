require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')

get('/') do
  erb(:form)
end

get('/result') do
  length = params.fetch("length").to_i()
  width = params.fetch("width").to_i()
  height = params.fetch("height").to_i()
  weight = params.fetch("weight").to_i()

  @shipping_cost = Parcel.new(length, width, height, weight).cost_to_ship()

  erb(:result)
end
