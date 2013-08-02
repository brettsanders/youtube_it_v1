get '/user/:user_id' do
  @user = User.find(params[:user_id])
  erb :user_homepage
end

post '/users/new' do
  p params
  @user = User.create(params[:user])

  client = YouTubeIt::Client.new

  user_playlists = client.playlists(@user.yt_username)

  user_playlists.each do |playlist|
    @user.playlists.create(
      yt_title:       playlist.title,
      yt_playlist_id: playlist.playlist_id,
      yt_published:   playlist.published,
      yt_summary:     playlist.summary,
      yt_description: playlist.description
    )
  end

  redirect "/user/#{@user.id}"
end
