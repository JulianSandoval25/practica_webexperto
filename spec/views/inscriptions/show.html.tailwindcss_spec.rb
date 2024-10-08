require 'rails_helper'

RSpec.describe "inscriptions/show", type: :view do
  before(:each) do
    assign(:inscription, Inscription.create!(
      student: nil,
      course: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
