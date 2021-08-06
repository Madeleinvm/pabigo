require 'rails_helper'

RSpec.describe "pets/new", type: :view do
  before(:each) do
    assign(:pet, Pet.new(
      :name => "MyString",
      :adoptions => nil,
      :races => nil
    ))
  end

  it "renders new pet form" do
    render

    assert_select "form[action=?][method=?]", pets_path, "post" do

      assert_select "input[name=?]", "pet[name]"

      assert_select "input[name=?]", "pet[adoptions_id]"

      assert_select "input[name=?]", "pet[races_id]"
    end
  end
end
