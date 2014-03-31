require 'sinatra/base'

class App < Sinatra::Application

  get '/' do
    erb :index
  end

  get '/items/new' do
    erb :new_product
  end

end