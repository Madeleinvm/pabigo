require 'rails_helper'

RSpec.describe "subscriptions/index", type: :view do
  before(:each) do
    assign(:subscriptions, [
      Subscription.create!(
        :email => "Email",
        :period => "Period"
      ),
      Subscription.create!(
        :email => "Email",
        :period => "Period"
      )
    ])
  end

  it "renders a list of subscriptions" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Period".to_s, :count => 2
  end
end
