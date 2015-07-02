class Place < ActiveRecord::Base
  belongs_to :parking
  scope :desc, -> { order(number: :desc) }
end
