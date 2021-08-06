require 'rails_helper'

RSpec.describe "tip_types/index", type: :view do
  before(:each) do
    assign(:tip_types, [
      TipType.create!(
        :name => "Name"
      ),
      TipType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of tip_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
