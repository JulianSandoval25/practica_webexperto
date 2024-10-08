require 'rails_helper'

RSpec.describe "teachers/edit", type: :view do
  let(:teacher) {
    Teacher.create!(
      nombre: "MyString",
      apellido: "MyString",
      email: "MyString"
    )
  }

  before(:each) do
    assign(:teacher, teacher)
  end

  it "renders the edit teacher form" do
    render

    assert_select "form[action=?][method=?]", teacher_path(teacher), "post" do

      assert_select "input[name=?]", "teacher[nombre]"

      assert_select "input[name=?]", "teacher[apellido]"

      assert_select "input[name=?]", "teacher[email]"
    end
  end
end
