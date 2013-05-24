require 'spec_helper'

describe "checkins/show" do
  before(:each) do
    @checkin = assign(:checkin, stub_model(Checkin,
      :lasik => false,
      :glasses => false,
      :contacts => false,
      :steps => false,
      :work => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
