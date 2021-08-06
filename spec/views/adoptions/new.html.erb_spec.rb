require 'rails_helper'

RSpec.describe "adoptions/new", type: :view do
  before(:each) do
    assign(:adoption, Adoption.new(
      :users => nil
    ))
  end

  it "renders new adoption form" do
    render

    assert_select "form[action=?][method=?]", adoptions_path, "post" do

      assert_select "input[name=?]", "adoption[users_id]"
    end
  end
end
