require 'rails_helper'

RSpec.describe "tip_types/new", type: :view do
  before(:each) do
    assign(:tip_type, TipType.new(
      :name => "MyString"
    ))
  end

  it "renders new tip_type form" do
    render

    assert_select "form[action=?][method=?]", tip_types_path, "post" do

      assert_select "input[name=?]", "tip_type[name]"
    end
  end
end
