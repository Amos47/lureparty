class CreateTrainers < ActiveRecord::Migration[5.0]
  def change
    create_table :trainers do |t|
      t.string :user_name
      t.string :phone
      t.string :team
      t.integer :city_id

      t.timestamps
    end
  end
end
