require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection'
require_relative 'models/selfie'

get '/' do
  @selfies = Selfie.all
  erb :index
end

post '/' do
  @selfie = Selfie.new(text: params[:text])
  if @selfie.save
    redirect '/'
  end
end

after do
  ActiveRecord::Base.connection.close
end