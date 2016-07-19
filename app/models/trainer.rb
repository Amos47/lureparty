class Trainer < ApplicationRecord
  belongs_to :city, foreign_key: 'city_place_id', primary_key: 'place_id'
  validates :name, presence: true
  validates :phone, uniqueness: true, presence: true
  validates :team, inclusion: { in: %w(Valor Mystic Instinct Harmony), message: "%{value} is not a valid team" }

  def city_name
    city.try!(:name)
  end
end
