require 'rails_helper'

RSpec.describe "pets/index", type: :view do
  before(:each) do
    assign(:pets, [
      Pet.create!(
        :name => "Name",
        :adoptions => nil,
        :races => nil
      ),
      Pet.create!(
        :name => "Name",
        :adoptions => nil,
        :races => nil
      )
    ])
  end

  it "renders a list of pets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
