require "spec_helper"

describe MedzzsController do
  describe "routing" do

    it "routes to #index" do
      get("/medzzs").should route_to("medzzs#index")
    end

    it "routes to #new" do
      get("/medzzs/new").should route_to("medzzs#new")
    end

    it "routes to #show" do
      get("/medzzs/1").should route_to("medzzs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/medzzs/1/edit").should route_to("medzzs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/medzzs").should route_to("medzzs#create")
    end

    it "routes to #update" do
      put("/medzzs/1").should route_to("medzzs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/medzzs/1").should route_to("medzzs#destroy", :id => "1")
    end

  end
end
