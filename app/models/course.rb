# == Schema Information
#
# Table name: courses
#
#  id           :bigint           not null, primary key
#  nombre       :string
#  descripcion  :text
#  fecha_inicio :date
#  costo        :decimal(, )
#  teacher_id   :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  material_id  :bigint           not null
#
class Course < ApplicationRecord
  belongs_to :teacher
  belongs_to :material
  has_many :inscriptions
  has_many :students, through: :inscriptions
  validates :nombre, :descripcion, :fecha_inicio, :costo, :teacher_id, :material_id, presence: true
  validate :due_date_validity
  accepts_nested_attributes_for :inscriptions, allow_destroy: true
  def due_date_validity
    if fecha_inicio < Date.today
      errors.add(:fecha_inicio, "debe ser mayor a la fecha actual")
    end
  end
end
