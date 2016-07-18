class AddCityPlaceIdToCity < ActiveRecord::Migration[5.0]
  def up
    add_column :cities, :place_id, :string
    add_index :cities, :place_id, unique: true
    change_column :cities, :place_id, :string, null: false

    add_column :trainers, :city_place_id, :string
    add_index :trainers, :city_place_id
    change_column :trainers, :city_place_id, :string, null: false
    remove_column :trainers, :city_id

    add_column :events, :city_place_id, :string
    add_index :events, :city_place_id
    change_column :events, :city_place_id, :string, null: false
    remove_column :events, :city_id
  end
  def down
    remove_index :cities, :place_id
    remove_column :cities, :place_id

    remove_index :trainers, :city_place_id
    remove_column :trainers, :city_place_id

    remove_index :events, :city_place_id
    remove_column :events, :city_place_id
  end
end
