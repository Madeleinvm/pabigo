require 'rails_helper'

RSpec.describe "tips/new", type: :view do
  before(:each) do
    assign(:tip, Tip.new(
      :name => "MyString",
      :description => "MyString",
      :tip_types => nil
    ))
  end

  it "renders new tip form" do
    render

    assert_select "form[action=?][method=?]", tips_path, "post" do

      assert_select "input[name=?]", "tip[name]"

      assert_select "input[name=?]", "tip[description]"

      assert_select "input[name=?]", "tip[tip_types_id]"
    end
  end
end
