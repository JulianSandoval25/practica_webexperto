# == Schema Information
#
# Table name: students
#
#  id         :bigint           not null, primary key
#  nombre     :string
#  apellido   :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Student, type: :model do
  describe "validations" do
    it "validate presence of requiere fields" do
      should validate_presence_of(:nombre)
      should validate_presence_of(:apellido)
      should validate_presence_of(:email)
    end
  end
end
