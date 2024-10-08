require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  let(:course) {
    Course.create!(
      nombre: "MyString",
      descripcion: "MyText",
      costo: "9.99",
      teacher: nil
    )
  }

  before(:each) do
    assign(:course, course)
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(course), "post" do

      assert_select "input[name=?]", "course[nombre]"

      assert_select "textarea[name=?]", "course[descripcion]"

      assert_select "input[name=?]", "course[costo]"

      assert_select "input[name=?]", "course[teacher_id]"
    end
  end
end
