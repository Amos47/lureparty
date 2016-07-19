class City < ApplicationRecord
  validates :name, uniqueness: true
  validates :place_id, uniqueness: true
  has_many :trainers, inverse_of: :city
  has_many :events, inverse_of: :city
end
