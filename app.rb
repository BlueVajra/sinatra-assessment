require 'sinatra/base'

class App < Sinatra::Application

  ITEM_REPOSITORY = []

  get '/' do
    erb :index, locals: {:items => ITEM_REPOSITORY}
  end

  get '/items/new' do
    erb :new_product
  end

  post '/items' do
    ITEM_REPOSITORY << params['new_product']
    redirect('/')
  end

end