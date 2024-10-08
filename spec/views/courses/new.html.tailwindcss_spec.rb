require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      nombre: "MyString",
      descripcion: "MyText",
      costo: "9.99",
      teacher: nil
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input[name=?]", "course[nombre]"

      assert_select "textarea[name=?]", "course[descripcion]"

      assert_select "input[name=?]", "course[costo]"

      assert_select "input[name=?]", "course[teacher_id]"
    end
  end
end
