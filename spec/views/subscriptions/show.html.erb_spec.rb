require 'rails_helper'

RSpec.describe "subscriptions/show", type: :view do
  before(:each) do
    @subscription = assign(:subscription, Subscription.create!(
      :email => "Email",
      :period => "Period"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Period/)
  end
end
