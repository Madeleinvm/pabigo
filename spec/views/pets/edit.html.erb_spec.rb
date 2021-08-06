require 'rails_helper'

RSpec.describe "pets/edit", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      :name => "MyString",
      :adoptions => nil,
      :races => nil
    ))
  end

  it "renders the edit pet form" do
    render

    assert_select "form[action=?][method=?]", pet_path(@pet), "post" do

      assert_select "input[name=?]", "pet[name]"

      assert_select "input[name=?]", "pet[adoptions_id]"

      assert_select "input[name=?]", "pet[races_id]"
    end
  end
end
