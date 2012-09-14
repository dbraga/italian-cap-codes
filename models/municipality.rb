class Municipality < ActiveRecord::Base
  attr_accessible :cap, :district_id, :fiscal_code, :istat_code, :name, :prefix

  # Italian Aliases
  alias_attribute :nome, :name
  alias_attribute :codice_fiscale, :fiscal_code
  alias_attribute :codice_istat, :istat_code
  alias_attribute :prefisso, :prefix

	 belongs_to :district
end
