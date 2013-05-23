require 'spec_helper'

describe "medzzs/edit" do
  before(:each) do
    @medzz = assign(:medzz, stub_model(Medzz,
      :medicine => "MyText"
    ))
  end

  it "renders the edit medzz form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => medzzs_path(@medzz), :method => "post" do
      assert_select "textarea#medzz_medicine", :name => "medzz[medicine]"
    end
  end
end
