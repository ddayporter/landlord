require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pg" # postgres db library
require "active_record" # the ORM
require "pry" # for debugging
require 'sinatra'
require 'sinatra/reloader'

require_relative "db/connection.rb" # require the db connection file that connects us to PSQL, prior to loading models
require_relative "models/apartment"
require_relative "models/tenant"
require_relative "controllers/apartments"

get '/' do
 erb :index
end

get '/apartments/:id/tenants/new' do
  erb :"tenants/new"
end
