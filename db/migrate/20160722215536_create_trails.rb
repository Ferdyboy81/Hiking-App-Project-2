class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name
      t.string :location
      t.string :level
      t.string :distance

      t.timestamps null: false
    end
  end
end
