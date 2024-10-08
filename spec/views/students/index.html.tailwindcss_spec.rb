require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        nombre: "Nombre",
        apellido: "Apellido",
        email: "Email"
      ),
      Student.create!(
        nombre: "Nombre",
        apellido: "Apellido",
        email: "Email"
      )
    ])
  end

  it "renders a list of students" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Nombre".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Apellido".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
  end
end
