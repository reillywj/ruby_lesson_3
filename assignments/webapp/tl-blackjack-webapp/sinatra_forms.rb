require 'rubygems'
require 'sinatra'
require 'pry'

# set :sessions, true
use Rack::Session::Cookie, :key => 'rack.session',
                          :path => '/',
                          :secret => 'my_super_secret_string1988$&**'



#How to process requests of HTTP method POST

# Typically sent by a form

get '/form' do
  erb :form
end

get '/' do
  "Index page"
end

post '/myaction' do
  # Typically want to inspect what was inputted and do something with it.
  puts params['username']
  puts "#{params[:username]} via string interpolation."
end





