require 'spec_helper'

describe "medzzs/index" do
  before(:each) do
    assign(:medzzs, [
      stub_model(Medzz,
        :medicine => "MyText"
      ),
      stub_model(Medzz,
        :medicine => "MyText"
      )
    ])
  end

  it "renders a list of medzzs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
