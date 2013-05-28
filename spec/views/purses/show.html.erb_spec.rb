require 'spec_helper'

describe "purses/show" do
  before(:each) do
    @purse = assign(:purse, stub_model(Purse,
      :time => "Time",
      :day => "Day"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Time/)
    rendered.should match(/Day/)
  end
end
