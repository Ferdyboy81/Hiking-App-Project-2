class Rating < ActiveRecord::Base

belongs_to :trail
belongs_to :user

 validates :trail, presence: true
 validates :user, presence: true
 validates :value, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
end
