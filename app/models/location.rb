class Location < ApplicationRecord
  has_many :businesses, dependent: :destroy

  validates :city, presence: true
  validates :state, presence: true

  def self.randomize
    ActiveRecord::Base.connection.execute("SELECT * FROM locations ORDER BY random() LIMIT(1)").first
  end
  scope :randomize, -> {order("RANDOM()").limit(1)}
  scope :search, -> (city) { where("city", "%#{city}%")}
end
