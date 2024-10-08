require 'rails_helper'

RSpec.describe "teachers/index", type: :view do
  before(:each) do
    assign(:teachers, [
      Teacher.create!(
        nombre: "Nombre",
        apellido: "Apellido",
        email: "Email"
      ),
      Teacher.create!(
        nombre: "Nombre",
        apellido: "Apellido",
        email: "Email"
      )
    ])
  end

  it "renders a list of teachers" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Nombre".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Apellido".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
  end
end
