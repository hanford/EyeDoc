require 'spec_helper'

describe "checkins/edit" do
  before(:each) do
    @checkin = assign(:checkin, stub_model(Checkin,
      :lasik => false,
      :glasses => false,
      :contacts => false,
      :steps => false,
      :work => false
    ))
  end

  it "renders the edit checkin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => checkins_path(@checkin), :method => "post" do
      assert_select "input#checkin_lasik", :name => "checkin[lasik]"
      assert_select "input#checkin_glasses", :name => "checkin[glasses]"
      assert_select "input#checkin_contacts", :name => "checkin[contacts]"
      assert_select "input#checkin_steps", :name => "checkin[steps]"
      assert_select "input#checkin_work", :name => "checkin[work]"
    end
  end
end
