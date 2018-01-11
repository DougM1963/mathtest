require "sinatra"
require_relative "mathprogram.rb"

get '/' do
	erb :home
end

post '/math' do
	math_answer = params[:math_type]
	p1 = params[:p1]
	p2 = params[:p2]
	redirect '/math_input?math_answer=' + math_answer + '&p1=' + p1 + '&p2=' + p2
end

get '/math_input' do
	result = params[:math_answer]
	p1 = params[:p1]
	p2 = params[:p2]
	if result == "addition"
		erb :results, :locals => {:result => result, :p1 => p1, :p2 => p2}
	elsif result == "subtraction"
		erb :results, :locals => {:result => result, :p1 => p1, :p2 => p2}
	elsif result == "division"
		erb :results, :locals => {:result => result, :p1 => p1, :p2 => p2}
	elsif result == "multiplication"
		# erb :results, :locals => {:result => result, :p1 => p1, :p2 => p2}
	else
		puts "Sorry, your answer must be addition, subraction, division or multiplication!"
	end
end
