require 'rails_helper'

RSpec.describe "tips/index", type: :view do
  before(:each) do
    assign(:tips, [
      Tip.create!(
        :name => "Name",
        :description => "Description",
        :tip_types => nil
      ),
      Tip.create!(
        :name => "Name",
        :description => "Description",
        :tip_types => nil
      )
    ])
  end

  it "renders a list of tips" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
