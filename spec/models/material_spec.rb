require 'rails_helper'

RSpec.describe Material, type: :model do
  describe "validations" do
    it "validate presence of required fields" do
      should validate_presence_of(:nombre)
    end
  end
=begin
  describe "associations" do
    it "belongs to course" do
      should belong_to(:course)
    end
  end
=end
end
