class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :playlists
  has_one :template
end
