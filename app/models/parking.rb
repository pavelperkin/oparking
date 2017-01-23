class Parking < ActiveRecord::Base
  has_many :places
  mount_uploader :schema, SchemaUploader
end
