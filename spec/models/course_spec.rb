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
require 'rails_helper'


RSpec.describe Course, type: :model do
  describe "validations" do
    it "validate presence of required fields" do
      should validate_presence_of(:nombre)
      should validate_presence_of(:descripcion)
      should validate_presence_of(:fecha_inicio)
      should validate_presence_of(:costo)
      should validate_presence_of(:teacher_id)
      should accept_nested_attributes_for(:material)
    end

    it "validates that fecha_inicio is not in the past" do
      course = Course.new(fecha_inicio: Date.yesterday)
      course.valid?
      expect(course.errors[:fecha_inicio]).to include("debe ser mayor a la fecha actual")
    end
  end
end
