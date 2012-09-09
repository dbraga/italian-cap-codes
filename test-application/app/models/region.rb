class Region < ActiveRecord::Base
  attr_accessible :full_name, :short_name
	 has_many :districts
end
