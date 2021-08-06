require 'rails_helper'

RSpec.describe "adoptions/index", type: :view do
  before(:each) do
    assign(:adoptions, [
      Adoption.create!(
        :users => nil
      ),
      Adoption.create!(
        :users => nil
      )
    ])
  end

  it "renders a list of adoptions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
