class AddIdToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :text, :string
    add_column :reviews, :trail_id, :integer
    add_column :reviews, :user_id, :integer
  end
end
