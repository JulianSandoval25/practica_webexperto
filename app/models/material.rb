class Material < ApplicationRecord
  has_one :courses
  validates :nombre, presence: true
end
