require 'rails_helper'

RSpec.describe "ads/edit", type: :view do
  before(:each) do
    @ad = assign(:ad, Ad.create!(
      :titulo => "MyString",
      :descripcion => "MyText"
    ))
  end

  it "renders the edit ad form" do
    render

    assert_select "form[action=?][method=?]", ad_path(@ad), "post" do

      assert_select "input[name=?]", "ad[titulo]"

      assert_select "textarea[name=?]", "ad[descripcion]"
    end
  end
end
