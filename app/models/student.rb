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
class Student < ApplicationRecord
  has_and_belongs_to_many :courses
  validates :nombre, :apellido, :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email, uniqueness: true

  def full_name
    "#{nombre} #{apellido}"
  end
end
