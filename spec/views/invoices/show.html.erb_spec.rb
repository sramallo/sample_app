require 'spec_helper'

describe "invoices/show" do
  before(:each) do
    @invoice = assign(:invoice, stub_model(Invoice,
      :type => "Type",
      :branch_id => 1,
      :number => 2,
      :client_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
