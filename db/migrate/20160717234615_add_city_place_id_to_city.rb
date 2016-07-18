class AddCityPlaceIdToCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :place_id, :string
  end
end
