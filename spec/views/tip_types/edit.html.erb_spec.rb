require 'rails_helper'

RSpec.describe "tip_types/edit", type: :view do
  before(:each) do
    @tip_type = assign(:tip_type, TipType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit tip_type form" do
    render

    assert_select "form[action=?][method=?]", tip_type_path(@tip_type), "post" do

      assert_select "input[name=?]", "tip_type[name]"
    end
  end
end
