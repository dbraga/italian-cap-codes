class District < ActiveRecord::Base
  attr_accessible :full_name, :region_id, :short_name, :region
  belongs_to :region
	 has_many :municipalities
end
