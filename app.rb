require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  # testing
  get '/' do 
    "testing"
  end

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do 
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end

  get '/multiply/:num1/:num2' do 
    @product = params[:num1].to_i * params[:num2].to_i
    status 200
  end
end