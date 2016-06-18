require "spec_helper"
describe DojosController do
  describe "routing" do
    it "routes to #index" do
      expect(get("/")).to route_to("dojos#index")
    end
    it "routes to #world" do
      expect(get("/hello")).to route_to("dojos#world")
    end
    it "routes to #ninjas" do
      expect(get("/ninjas")).to route_to("dojos#ninjas")
    end
  end
end