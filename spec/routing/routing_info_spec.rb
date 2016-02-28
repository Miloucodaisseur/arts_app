require 'rails_helper'

RSpec.describe InfoController, type: :routing do
  describe "routes" do
    it "routes to #index" do
      expect(get '/').to route_to 'info#index'
    end
  end
end
