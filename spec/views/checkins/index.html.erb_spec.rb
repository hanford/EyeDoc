require 'spec_helper'

describe "checkins/index" do
  before(:each) do
    assign(:checkins, [
      stub_model(Checkin,
        :lasik => false,
        :glasses => false,
        :contacts => false,
        :steps => false,
        :work => false
      ),
      stub_model(Checkin,
        :lasik => false,
        :glasses => false,
        :contacts => false,
        :steps => false,
        :work => false
      )
    ])
  end

  it "renders a list of checkins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
