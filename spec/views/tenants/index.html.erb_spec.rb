require 'rails_helper'

RSpec.describe "tenants/index", :type => :view do
  before(:each) do
    assign(:tenants, [
      Tenant.create!(
        :subdomain => "Subdomain",
        :name => "Name"
      ),
      Tenant.create!(
        :subdomain => "Subdomain",
        :name => "Name"
      )
    ])
  end

  it "renders a list of tenants" do
    render
    assert_select "tr>td", :text => "Subdomain".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
