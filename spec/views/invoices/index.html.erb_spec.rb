require 'spec_helper'

describe "invoices/index" do
  before(:each) do
    assign(:invoices, [
      stub_model(Invoice,
        :type => "Type",
        :branch_id => 1,
        :number => 2,
        :client_id => 3
      ),
      stub_model(Invoice,
        :type => "Type",
        :branch_id => 1,
        :number => 2,
        :client_id => 3
      )
    ])
  end

  it "renders a list of invoices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
