class Material < ApplicationRecord
  has_one :course, dependent: :destroy
  validates :nombre, presence: true
end
