require 'rails_helper'

RSpec.describe "materials/index", type: :view do
  before(:each) do
    assign(:materials, [
      Material.create!(
        nombre: "Nombre"
      ),
      Material.create!(
        nombre: "Nombre"
      )
    ])
  end

  it "renders a list of materials" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Nombre".to_s), count: 2
  end
end
