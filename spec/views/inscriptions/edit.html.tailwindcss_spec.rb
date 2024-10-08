require 'rails_helper'

RSpec.describe "inscriptions/edit", type: :view do
  let(:inscription) {
    Inscription.create!(
      student: nil,
      course: nil
    )
  }

  before(:each) do
    assign(:inscription, inscription)
  end

  it "renders the edit inscription form" do
    render

    assert_select "form[action=?][method=?]", inscription_path(inscription), "post" do

      assert_select "input[name=?]", "inscription[student_id]"

      assert_select "input[name=?]", "inscription[course_id]"
    end
  end
end
