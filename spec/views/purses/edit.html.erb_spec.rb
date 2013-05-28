require 'spec_helper'

describe "purses/edit" do
  before(:each) do
    @purse = assign(:purse, stub_model(Purse,
      :time => "MyString",
      :day => "MyString"
    ))
  end

  it "renders the edit purse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purses_path(@purse), :method => "post" do
      assert_select "input#purse_time", :name => "purse[time]"
      assert_select "input#purse_day", :name => "purse[day]"
    end
  end
end
