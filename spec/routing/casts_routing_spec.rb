require "spec_helper"

describe CastsController do
  describe "routing" do

    it "routes to #index" do
      get("/casts").should route_to("casts#index")
    end

    it "routes to #new" do
      get("/casts/new").should route_to("casts#new")
    end

    it "routes to #show" do
      get("/casts/1").should route_to("casts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/casts/1/edit").should route_to("casts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/casts").should route_to("casts#create")
    end

    it "routes to #update" do
      put("/casts/1").should route_to("casts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/casts/1").should route_to("casts#destroy", :id => "1")
    end

  end
end
