require 'rails_helper'

RSpec.describe "institutions/show", type: :view do
  before(:each) do
    @institution = assign(:institution, Institution.create!(
      :name => "Name",
      :address => "Address",
      :phone => "",
      :email => "Email",
      :web => "Web Page"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Web Page/)
  end
end
