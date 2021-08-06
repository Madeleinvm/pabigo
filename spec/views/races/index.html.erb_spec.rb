require 'rails_helper'

RSpec.describe "races/index", type: :view do
  before(:each) do
    assign(:races, [
      Race.create!(
        :name => "Name"
      ),
      Race.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of races" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
