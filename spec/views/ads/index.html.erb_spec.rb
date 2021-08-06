require 'rails_helper'

RSpec.describe "ads/index", type: :view do
  before(:each) do
    assign(:ads, [
      Ad.create!(
        :titulo => "Titulo",
        :descripcion => "MyText"
      ),
      Ad.create!(
        :titulo => "Titulo",
        :descripcion => "MyText"
      )
    ])
  end

  it "renders a list of ads" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
