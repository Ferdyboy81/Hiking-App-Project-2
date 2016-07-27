class AddLinkToTrails < ActiveRecord::Migration
  def change
    add_column :trails, :directions, :string
  end
end
