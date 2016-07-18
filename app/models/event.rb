class Event < ApplicationRecord
  belongs_to :city, foreign_key: 'city_place_id', primary_key: 'place_id'
  # validates :start, [:address, :end], unique: true
end
