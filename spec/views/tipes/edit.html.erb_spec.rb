require 'rails_helper'

RSpec.describe "tipes/edit", type: :view do
  before(:each) do
    @tipe = assign(:tipe, Tipe.create!(
      :name => "MyString",
      :description => "MyString",
      :category => nil
    ))
  end

  it "renders the edit tipe form" do
    render

    assert_select "form[action=?][method=?]", tipe_path(@tipe), "post" do

      assert_select "input[name=?]", "tipe[name]"

      assert_select "input[name=?]", "tipe[description]"

      assert_select "input[name=?]", "tipe[category_id]"
    end
  end
end
