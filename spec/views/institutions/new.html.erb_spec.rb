require 'rails_helper'

RSpec.describe "institutions/new", type: :view do
  before(:each) do
    assign(:institution, Institution.new(
      :name => "MyString",
      :address => "MyString",
      :phone => "",
      :email => "MyString",
      :web => "MyString"
    ))
  end

  it "renders new institution form" do
    render

    assert_select "form[action=?][method=?]", institutions_path, "post" do

      assert_select "input[name=?]", "institution[name]"

      assert_select "input[name=?]", "institution[address]"

      assert_select "input[name=?]", "institution[phone]"

      assert_select "input[name=?]", "institution[email]"

      assert_select "input[name=?]", "institution[web]"
    end
  end
end
