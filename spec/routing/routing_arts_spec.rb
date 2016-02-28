require 'rails_helper'

RSpec.describe ArtsController, type: :routing do
  describe "routes" do
    it "routes to #index of arts" do
      expect(get '/arts').to route_to 'arts#index'
    end

    it "routes to #show of art" do
      expect(get '/arts/1').to route_to 'arts#show', id: "1"
    end
  end
end
