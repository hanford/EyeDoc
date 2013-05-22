require 'spec_helper'


describe "Doctor Model" do
  pending "add some examples to (or delete) #{__FILE__}"
  before do
  	doctor = Doctor.create email: "something.com"
  end
  it "does NOT allow emails adddresses withOUT the '@' symbol" do
 	doctor.email.match('@').should eq( '@')
  end
end
