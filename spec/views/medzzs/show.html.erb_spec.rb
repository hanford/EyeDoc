require 'spec_helper'

describe "medzzs/show" do
  before(:each) do
    @medzz = assign(:medzz, stub_model(Medzz,
      :medicine => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
