require 'rails_helper'

RSpec.describe "ads/show", :type => :view do
  before(:each) do
    @ad = assign(:ad, Ad.create!(
      :text => "MyText",
      :user => nil,
      :tenant => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
