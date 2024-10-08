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
class Inscription < ApplicationRecord
  belongs_to :student
  belongs_to :course, optional: true
  validates :student_id, :course_id, presence: true
end
