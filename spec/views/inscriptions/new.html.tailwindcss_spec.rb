require 'rails_helper'

RSpec.describe "inscriptions/new", type: :view do
  before(:each) do
    assign(:inscription, Inscription.new(
      student: nil,
      course: nil
    ))
  end

  it "renders new inscription form" do
    render

    assert_select "form[action=?][method=?]", inscriptions_path, "post" do

      assert_select "input[name=?]", "inscription[student_id]"

      assert_select "input[name=?]", "inscription[course_id]"
    end
  end
end
