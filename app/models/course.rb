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
  validates :nombre, :descripcion, :fecha_inicio, :costo, :teacher_id, presence: true
  #validates :material_id, uniqueness: true
  validate :due_date_validity
  accepts_nested_attributes_for :material
  def due_date_validity
    if fecha_inicio.present? && fecha_inicio < Date.today
      errors.add(:fecha_inicio, "debe ser mayor a la fecha actual")
    end
  end
end
