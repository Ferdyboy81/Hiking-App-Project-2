class Trail < ActiveRecord::Base

  has_many :reviews
  has_many :photos
  has_many :users, through: :reviews


end
