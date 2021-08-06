require 'rails_helper'

RSpec.describe "ads/show", type: :view do
  before(:each) do
    @ad = assign(:ad, Ad.create!(
      :titulo => "Titulo",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/MyText/)
  end
end
