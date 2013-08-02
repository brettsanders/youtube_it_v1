get '/' do
  # Look in app/views/index.erb
  @users = User.all
  erb :index
end
