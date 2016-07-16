class Trainer < ApplicationRecord
  belongs_to :city
  validates :name, uniqueness: true
  validates :phone, uniqueness: true
end
