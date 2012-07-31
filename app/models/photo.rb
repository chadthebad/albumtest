class Photo < ActiveRecord::Base
  
  belongs_to :photo_album
  belongs_to :user
  
  attr_accessible :photo_album_id, :title
end
