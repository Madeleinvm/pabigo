require 'rails_helper'

RSpec.describe "institutions/index", type: :view do
  before(:each) do
    assign(:institutions, [
      Institution.create!(
        :name => "Name",
        :address => "Address",
        :phone => "",
        :email => "Email",
        :web => "Web Page"
      ),
      Institution.create!(
        :name => "Name",
        :address => "Address",
        :phone => "",
        :email => "Email",
        :web => "Web Page"
      )
    ])
  end

  it "renders a list of institutions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Web Page".to_s, :count => 2
  end
end
