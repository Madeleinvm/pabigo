require 'rails_helper'

RSpec.describe "tips/show", type: :view do
  before(:each) do
    @tip = assign(:tip, Tip.create!(
      :name => "Name",
      :description => "Description",
      :tip_types => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
