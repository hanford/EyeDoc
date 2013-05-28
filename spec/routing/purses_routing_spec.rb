require "spec_helper"

describe PursesController do
  describe "routing" do

    it "routes to #index" do
      get("/purses").should route_to("purses#index")
    end

    it "routes to #new" do
      get("/purses/new").should route_to("purses#new")
    end

    it "routes to #show" do
      get("/purses/1").should route_to("purses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/purses/1/edit").should route_to("purses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/purses").should route_to("purses#create")
    end

    it "routes to #update" do
      put("/purses/1").should route_to("purses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/purses/1").should route_to("purses#destroy", :id => "1")
    end

  end
end
