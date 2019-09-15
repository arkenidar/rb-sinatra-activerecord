#!/usr/bin/env ruby
# app.rb
require 'sinatra'
require 'active_record'
require 'sinatra/activerecord'

#gem 'sinatra-reloader'
require 'sinatra/reloader'
configure :production do
enable :reloader
end

# at the bottom of app.rb
require './models'

# app.rb
get '/' do
  @users = User.all
  erb :index
end
