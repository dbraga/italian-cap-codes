class Municipality < ActiveRecord::Base
  attr_accessible :cap, :district_id, :fiscal_code, :istat_code, :name, :prefix
  belongs_to :district
end
