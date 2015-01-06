require 'rails_helper'

RSpec.describe "ads/new", :type => :view do
  before(:each) do
    assign(:ad, Ad.new(
      :text => "MyText",
      :user => nil,
      :tenant => nil
    ))
  end

  it "renders new ad form" do
    render

    assert_select "form[action=?][method=?]", ads_path, "post" do

      assert_select "textarea#ad_text[name=?]", "ad[text]"

      assert_select "input#ad_user_id[name=?]", "ad[user_id]"

      assert_select "input#ad_tenant_id[name=?]", "ad[tenant_id]"
    end
  end
end
