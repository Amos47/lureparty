class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :description
      t.references :city, foreign_key: true, null: false
      t.string :address, null: false
      t.datetime :start, null: false, index: true
      t.datetime :end, null: false
      t.boolean :wifi, default: false
      t.boolean :power, default: false

      t.timestamps
    end
  end
end
