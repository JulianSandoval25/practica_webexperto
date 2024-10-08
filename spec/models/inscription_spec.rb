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
  pending "add some examples to (or delete) #{__FILE__}"
end
