require 'rubygems'
require 'sinatra'
require 'pry'

# set :sessions, true
use Rack::Session::Cookie, :key => 'rack.session',
                          :path => '/',
                          :secret => 'my_super_secret_string1988$&**'



#How to render or redirect back to the client
get '/' do
  "Index page"
end



get '/inline' do
  "Hi, directly from the action!"
end

get '/template' do
  erb :my_template #references the my_template.erb file which has html

end

get '/nested_template' do
  erb :"/users/profile"
end

get '/nothere' do
  redirect '/inline'
end


