require "rails_helper"

RSpec.describe CostumersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/costumers").to route_to("costumers#index")
    end

    it "routes to #new" do
      expect(:get => "/costumers/new").to route_to("costumers#new")
    end

    it "routes to #show" do
      expect(:get => "/costumers/1").to route_to("costumers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/costumers/1/edit").to route_to("costumers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/costumers").to route_to("costumers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/costumers/1").to route_to("costumers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/costumers/1").to route_to("costumers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/costumers/1").to route_to("costumers#destroy", :id => "1")
    end

  end
end
