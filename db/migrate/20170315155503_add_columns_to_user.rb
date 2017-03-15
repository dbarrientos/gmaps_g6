class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :address, :string
  end
end
