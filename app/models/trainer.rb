class Trainer < ApplicationRecord
  belongs_to :city, foreign_key: 'city_place_id', primary_key: 'place_id'
  validates :name, uniqueness: true
  validates :phone, uniqueness: true
end
