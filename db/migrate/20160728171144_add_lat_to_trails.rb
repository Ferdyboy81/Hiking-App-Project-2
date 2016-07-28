class AddLatToTrails < ActiveRecord::Migration
  def change
    add_column :trails, :lat, :decimal
    add_column :trails, :lng, :decimal
  end
end
