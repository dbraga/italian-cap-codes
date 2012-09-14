class District < ActiveRecord::Base
  attr_accessible :full_name, :region_id, :short_name

  # Italian Aliases
  alias_attribute :nome, :full_name
  alias_attribute :sigla, :short_name

  belongs_to :region
	 has_many :municipalities

  def include_municipality?(municipality)
  	municipalities.include?(municipality)
  end	 
end
