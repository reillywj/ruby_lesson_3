require 'rubygems'
require 'sinatra'
require 'pry'

# set :sessions, true
use Rack::Session::Cookie, :key => 'rack.session',
                          :path => '/',
                          :secret => 'my_super_secret_string1988$&**'



# Assignment work:
# Render Text: create a simple route that renders some text in the browser.

get '/simple_text' do
  "Nothing fancy, just give it a try, like in the lessons."
end

# Create a route that renders a template, and a nested template undre a sub-directory under views:

get '/render_template' do
  erb :render_template
end

get '/render_nested_template' do
  erb :"/users/nested"
end






