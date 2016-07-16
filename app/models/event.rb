class Event < ApplicationRecord
  belongs_to :city
  # validates :start, [:address, :end], unique: true
end
