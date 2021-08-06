require 'rails_helper'

RSpec.describe "tipes/new", type: :view do
  before(:each) do
    assign(:tipe, Tipe.new(
      :name => "MyString",
      :description => "MyString",
      :category => nil
    ))
  end

  it "renders new tipe form" do
    render

    assert_select "form[action=?][method=?]", tipes_path, "post" do

      assert_select "input[name=?]", "tipe[name]"

      assert_select "input[name=?]", "tipe[description]"

      assert_select "input[name=?]", "tipe[category_id]"
    end
  end
end
