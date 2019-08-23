class Location < ApplicationRecord
  has_many :businesses, dependent: :destroy

  validates :city, presence: true
  validates :state, presence: true
end
