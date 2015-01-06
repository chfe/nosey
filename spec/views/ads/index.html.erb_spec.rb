require 'rails_helper'

RSpec.describe "ads/index", :type => :view do
  before(:each) do
    assign(:ads, [
      Ad.create!(
        :text => "MyText",
        :user => nil,
        :tenant => nil
      ),
      Ad.create!(
        :text => "MyText",
        :user => nil,
        :tenant => nil
      )
    ])
  end

  it "renders a list of ads" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
