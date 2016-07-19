class TrainerNameNotUnique < ActiveRecord::Migration[5.0]
  def up
    remove_index :trainers, :name
    add_index :trainers, :name
  end

  def down
    remove_index :trainers, :name
    add_index :trainers, :name, unique: true
  end
end
