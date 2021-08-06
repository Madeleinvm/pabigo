require 'rails_helper'

RSpec.describe "tipes/show", type: :view do
  before(:each) do
    @tipe = assign(:tipe, Tipe.create!(
      :name => "Name",
      :description => "Description",
      :category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
