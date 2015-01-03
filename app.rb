require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection'
require_relative 'models/selfie'

get '/' do
  erb :index
end

post '/' do
  if @selfie.save
    redirect '/'
  else
    erb :index
  end
end

before do
  @selfie = Selfie.new(text: params[:text])
  @selfies = Selfie.all.reverse
end

after do
  ActiveRecord::Base.connection.close
end