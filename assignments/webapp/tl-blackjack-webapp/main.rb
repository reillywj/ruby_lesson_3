require 'rubygems'
require 'sinatra'
require 'pry'

set :sessions, true


get '/' do
  erb :set_name
end


post '/set_name' do
  session[:player_name] = params[:player_name]
  redirect '/game'
end

get '/game' do
  session[:deck] = [['2', 'H'],[ '3','D']]
  # suits = ['H', 'D', 'S', 'C'] if session[:deck] == nil
  # faces = ['2','3','4','5','6','7','8','9','10','J','Q','K','A'] if session[:deck] == nil

  session[:player_cards] = []
  session[:dealer_cards] = []
  session[:player_cards] << session[:deck].pop
  session[:dealer_cards] << session[:deck].pop
  erb :game
end


