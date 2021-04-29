require 'sinatra'
require 'sinatra/reloader' if development?
require './data'

enable :sessions

get '/' do

	if session[:login]
		@title = "Gambling"
		erb :bet
	else
		@title = "Log in"
		erb :login
	end
	
	
end

post '/' do
	user = Person.get(params[:username])

	if user != nil
		if params[:password] != user[:password]
			session[:message] = 'Password is wrong.'
			redirect to("/")
		end
		
	else
		Person.create(username: params[:username], password: params[:password], totalwin: 0, totalloss: 0, totalprofit: 0)
	end
	
	session[:win] = 0	
	session[:loss] = 0
	session[:profit] = 0
	session[:user] = Person.get(params[:username])
	session[:totalwin] = session[:user][:totalwin]
	session[:totalloss] = session[:user][:totalloss]
	session[:totalprofit] = session[:user][:totalprofit]
	session[:login] = true
	redirect to("/")

end

post '/gambling' do
	
	user = session[:user]
	money = params[:betmoney].to_i   #convert to integer  
	number = params[:dicenumber].to_i  
	roll = rand(6) + 1
	
	if number == roll    
		"<h1>The dice landed on #{roll}, you win #{10*money} dollers</h1>"
		session[:totalwin]+=1
		session[:win]+=1
		session[:totalprofit]+= 10*money
		session[:profit]+= 10*money
		session[:message] = "Congratuations! You won!"
		
	else    
		"<h1>The dice landed on #{roll}, you lost #{money} dollers</h1>"      
		session[:totalloss]+=1
		session[:loss]+=1
		session[:totalprofit]-= money
		session[:profit]-= money
		session[:message] = "You lost!"
	end
	user.update(totalwin: session[:totalwin], totalloss: session[:totalloss], totalprofit: session[:totalprofit])
	
	redirect to("/")
	
end

get '/logout' do
	session.clear
	session[:message] = "Successufully logged out."
	redirect to("/")
end