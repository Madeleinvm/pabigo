require 'rails_helper'

RSpec.describe "adoptions/show", type: :view do
  before(:each) do
    @adoption = assign(:adoption, Adoption.create!(
      :users => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
