require 'rails_helper'

RSpec.describe Art, type: :model do
  describe "validations" do
    it { is_expected.to have_many(:reviews) }
    it { is_expected.to validate_presence_of(:name) }
  end
end
