require 'rails_helper'

RSpec.describe "tips/edit", type: :view do
  before(:each) do
    @tip = assign(:tip, Tip.create!(
      :name => "MyString",
      :description => "MyString",
      :tip_types => nil
    ))
  end

  it "renders the edit tip form" do
    render

    assert_select "form[action=?][method=?]", tip_path(@tip), "post" do

      assert_select "input[name=?]", "tip[name]"

      assert_select "input[name=?]", "tip[description]"

      assert_select "input[name=?]", "tip[tip_types_id]"
    end
  end
end
