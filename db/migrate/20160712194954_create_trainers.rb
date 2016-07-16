class CreateTrainers < ActiveRecord::Migration[5.0]
  def change
    create_table :trainers do |t|
      t.string :name, null: false
      t.string :phone, null: false, index: { unique: true }
      t.string :team
      t.references :city, foreign_key: true, null: false

      t.add_index :name, unique: true

      t.timestamps
    end
  end
end
