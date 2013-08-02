class Template < ActiveRecord::Base
  # Remember to create a migration!
  belong_to :user
  belongs_to :playlist
end
