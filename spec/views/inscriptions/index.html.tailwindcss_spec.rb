require 'rails_helper'

RSpec.describe "inscriptions/index", type: :view do
  before(:each) do
    assign(:inscriptions, [
      Inscription.create!(
        student: nil,
        course: nil
      ),
      Inscription.create!(
        student: nil,
        course: nil
      )
    ])
  end

  it "renders a list of inscriptions" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
