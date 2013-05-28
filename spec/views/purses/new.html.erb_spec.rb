require 'spec_helper'

describe "purses/new" do
  before(:each) do
    assign(:purse, stub_model(Purse,
      :time => "MyString",
      :day => "MyString"
    ).as_new_record)
  end

  it "renders new purse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purses_path, :method => "post" do
      assert_select "input#purse_time", :name => "purse[time]"
      assert_select "input#purse_day", :name => "purse[day]"
    end
  end
end
