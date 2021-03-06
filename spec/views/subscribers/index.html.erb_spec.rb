require 'rails_helper'

RSpec.describe "subscribers/index", type: :view do
  before(:each) do
    assign(:subscribers, [
      Subscriber.create!(
        :email => "Email",
        :period => "Period"
      ),
      Subscriber.create!(
        :email => "Email",
        :period => "Period"
      )
    ])
  end

  it "renders a list of subscribers" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Period".to_s, :count => 2
  end
end
