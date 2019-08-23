class Location < ApplicationRecord
  has_many :businesses, dependent: :destroy

end
