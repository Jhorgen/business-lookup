require 'rails_helper'

RSpec.describe Business, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :business_catagory }
  it { should validate_presence_of :text_body }
end
