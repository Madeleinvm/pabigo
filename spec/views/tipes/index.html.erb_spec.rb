require 'rails_helper'

RSpec.describe "tipes/index", type: :view do
  before(:each) do
    assign(:tipes, [
      Tipe.create!(
        :name => "Name",
        :description => "Description",
        :category => nil
      ),
      Tipe.create!(
        :name => "Name",
        :description => "Description",
        :category => nil
      )
    ])
  end

  it "renders a list of tipes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
