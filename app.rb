# app.rb
require 'sinatra'
require 'active_record'
require 'sinatra/activerecord'

require 'sinatra/reloader'

# at the bottom of app.rb
require './models'

# app.rb
get '/' do
  @users = User.all
  erb :index
end
