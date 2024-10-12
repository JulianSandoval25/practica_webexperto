# == Schema Information
#
# Table name: teachers
#
#  id         :bigint           not null, primary key
#  nombre     :string
#  apellido   :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Teacher, type: :model do
  describe "validations" do
    it "validate presence of required fields" do
      should validate_presence_of(:nombre)
      should validate_presence_of(:apellido)
      should validate_presence_of(:email)
    end
  end
  describe "associations" do
    it "has many courses" do
      should have_many(:courses)
    end
  end
end
