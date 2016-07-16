class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.references :city, foreign_key: true
      t.string :address
      t.datetime :start
      t.datetime :end
      t.boolean :wifi
      t.boolean :power

      t.timestamps
    end
  end
end
