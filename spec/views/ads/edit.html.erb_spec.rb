require 'rails_helper'

RSpec.describe "ads/edit", :type => :view do
  before(:each) do
    @ad = assign(:ad, Ad.create!(
      :text => "MyText",
      :user => nil,
      :tenant => nil
    ))
  end

  it "renders the edit ad form" do
    render

    assert_select "form[action=?][method=?]", ad_path(@ad), "post" do

      assert_select "textarea#ad_text[name=?]", "ad[text]"

      assert_select "input#ad_user_id[name=?]", "ad[user_id]"

      assert_select "input#ad_tenant_id[name=?]", "ad[tenant_id]"
    end
  end
end
