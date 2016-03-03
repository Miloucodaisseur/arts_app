require 'rails_helper'

RSpec.describe ReviewsController, type: :routing do
  describe "routes" do

    it "routes to create" do
      expect(post '/arts/1/reviews').to route_to 'reviews#create', art_id: "1"
    end

    it "does not route to index" do
      expect(get '/arts/1/reviews').not_to be_routable
    end

    it "does not route to delete" do
      expect(delete '/arts/1/reviews/2').not_to be_routable, art_id: "1", id: "2"
    end

    it "does not route to show" do
      expect(get '/arts/1/reviews/2').not_to be_routable, art_id: "1", id: "2"
    end



    it "does not route to update" do
      expect(put '/arts/1/reviews/2').not_to be_routable, art_id: "1", id: "2"
    end
  end
end
