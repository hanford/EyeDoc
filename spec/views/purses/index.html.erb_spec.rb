require 'spec_helper'

describe "purses/index" do
  before(:each) do
    assign(:purses, [
      stub_model(Purse,
        :time => "Time",
        :day => "Day"
      ),
      stub_model(Purse,
        :time => "Time",
        :day => "Day"
      )
    ])
  end

  it "renders a list of purses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "Day".to_s, :count => 2
  end
end
