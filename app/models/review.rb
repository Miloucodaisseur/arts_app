class Review < ActiveRecord::Base
  belongs_to :art
   validates :name, presence: true
end
