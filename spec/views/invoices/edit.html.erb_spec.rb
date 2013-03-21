require 'spec_helper'

describe "invoices/edit" do
  before(:each) do
    @invoice = assign(:invoice, stub_model(Invoice,
      :type => "",
      :branch_id => 1,
      :number => 1,
      :client_id => 1
    ))
  end

  it "renders the edit invoice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invoices_path(@invoice), :method => "post" do
      assert_select "input#invoice_type", :name => "invoice[type]"
      assert_select "input#invoice_branch_id", :name => "invoice[branch_id]"
      assert_select "input#invoice_number", :name => "invoice[number]"
      assert_select "input#invoice_client_id", :name => "invoice[client_id]"
    end
  end
end
