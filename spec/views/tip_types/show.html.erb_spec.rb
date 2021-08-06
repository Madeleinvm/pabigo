require 'rails_helper'

RSpec.describe "tip_types/show", type: :view do
  before(:each) do
    @tip_type = assign(:tip_type, TipType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
