class Trail < ActiveRecord::Base
  ratyrate_rateable "rating"
  has_many :reviews
  has_many :photos
  has_many :users, through: :reviews


end
