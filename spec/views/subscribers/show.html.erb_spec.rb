require 'rails_helper'

RSpec.describe "subscribers/show", type: :view do
  before(:each) do
    @subscriber = assign(:subscriber, Subscriber.create!(
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
