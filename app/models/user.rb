class User < ActiveRecord::Base
  
  has_many :photos
  has_many :photo_albums
  
  attr_accessible :name, :password
end
