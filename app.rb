require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection'
require_relative 'models/selfie'

get '/' do
  "hello world"
end