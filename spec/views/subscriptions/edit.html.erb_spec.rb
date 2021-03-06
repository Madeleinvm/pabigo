require 'rails_helper'

RSpec.describe "subscriptions/edit", type: :view do
  before(:each) do
    @subscription = assign(:subscription, Subscription.create!(
      :email => "MyString",
      :period => "MyString"
    ))
  end

  it "renders the edit subscription form" do
    render

    assert_select "form[action=?][method=?]", subscription_path(@subscription), "post" do

      assert_select "input[name=?]", "subscription[email]"

      assert_select "input[name=?]", "subscription[period]"
    end
  end
end
