class City < ApplicationRecord

  validates :name, uniqueness: true
  validates :place_id, uniqueness: true
end
