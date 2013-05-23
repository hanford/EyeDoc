require 'spec_helper'

describe "medzzs/new" do
  before(:each) do
    assign(:medzz, stub_model(Medzz,
      :medicine => "MyText"
    ).as_new_record)
  end

  it "renders new medzz form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => medzzs_path, :method => "post" do
      assert_select "textarea#medzz_medicine", :name => "medzz[medicine]"
    end
  end
end
