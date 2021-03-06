require 'rails_helper'

RSpec.describe "institutions/edit", type: :view do
  before(:each) do
    @institution = assign(:institution, Institution.create!(
      :name => "MyString",
      :address => "MyString",
      :phone => "",
      :email => "MyString",
      :web => "MyString"
    ))
  end

  it "renders the edit institution form" do
    render

    assert_select "form[action=?][method=?]", institution_path(@institution), "post" do

      assert_select "input[name=?]", "institution[name]"

      assert_select "input[name=?]", "institution[address]"

      assert_select "input[name=?]", "institution[phone]"

      assert_select "input[name=?]", "institution[email]"

      assert_select "input[name=?]", "institution[web]"
    end
  end
end
