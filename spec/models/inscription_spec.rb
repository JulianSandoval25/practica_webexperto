# == Schema Information
#
# Table name: inscriptions
#
#  id         :bigint           not null, primary key
#  student_id :bigint           not null
#  course_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Inscription, type: :model do
  describe "validations" do
    it "validate presence of required fields" do
      should validate_presence_of(:student_id)
      should validate_presence_of(:course_id)
    end
  end

end
