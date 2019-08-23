class Business < ApplicationRecord
  belongs_to :location

  validates :name, presence: true
  validates :business_catagory, presence: true
  validates :text_body, presence: true
end
