require 'rails_helper'

RSpec.describe "ads/new", type: :view do
  before(:each) do
    assign(:ad, Ad.new(
      :titulo => "MyString",
      :descripcion => "MyText"
    ))
  end

  it "renders new ad form" do
    render

    assert_select "form[action=?][method=?]", _ads_path, "post" do

      assert_select "input[name=?]", "ad[titulo]"

      assert_select "textarea[name=?]", "ad[descripcion]"
    end
  end
end
