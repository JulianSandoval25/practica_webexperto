require 'rails_helper'

RSpec.describe "materials/show", type: :view do
  before(:each) do
    assign(:material, Material.create!(
      nombre: "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
  end
end
