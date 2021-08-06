require 'rails_helper'

RSpec.describe "adoptions/edit", type: :view do
  before(:each) do
    @adoption = assign(:adoption, Adoption.create!(
      :users => nil
    ))
  end

  it "renders the edit adoption form" do
    render

    assert_select "form[action=?][method=?]", adoption_path(@adoption), "post" do

      assert_select "input[name=?]", "adoption[users_id]"
    end
  end
end
