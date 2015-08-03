get '/' do
  # Look in app/views/index.erb
  # ask for initials of both players
  erb :index
end

#submit initials
post '/game/new' do

	#submit initials

end

#start game
get '/game/new' do

 erb :game

#game id

end

get '/game/results' do

#display results

end
