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
  pending "add some examples to (or delete) #{__FILE__}"
end
