require 'spec_helper'


describe "Patient Model" do
  pending "add some examples to (or delete) #{__FILE__}"

  it "It doesn't allow passwords under 5 characters" do
 	lambda {Patients.create password: "asd3"}.should raise_error
  end
end
