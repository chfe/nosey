require 'rails_helper'

RSpec.describe "tenants/edit", :type => :view do
  before(:each) do
    @tenant = assign(:tenant, Tenant.create!(
      :subdomain => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit tenant form" do
    render

    assert_select "form[action=?][method=?]", tenant_path(@tenant), "post" do

      assert_select "input#tenant_subdomain[name=?]", "tenant[subdomain]"

      assert_select "input#tenant_name[name=?]", "tenant[name]"
    end
  end
end
