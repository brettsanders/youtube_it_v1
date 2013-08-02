# show
get '/user/:user_id/playlists/:playlist_id' do
  @playlist = Playlist.find(params[:playlist_id])
  erb :playlist_show
end

# update background image
get '/user/:user_id/playlists/:playlist_id/custom_background_image' do
  @playlist = Playlist.find(params[:playlist_id])
  erb :playlist_add_custom_background_image
end

post '/user/:user_id/playlists/:playlist_id/custom_background_image' do
  @playlist = Playlist.find(params[:playlist_id])
  @playlist.update_attributes(params[:playlist])

  redirect "/user/#{@playlist.user.id}/playlists/#{@playlist.id}"
end
