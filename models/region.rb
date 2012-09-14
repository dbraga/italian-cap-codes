class Region < ActiveRecord::Base
  attr_accessible :full_name, :short_name

  # Italian Aliases
  alias_attribute :nome, :full_name
  alias_attribute :sigla, :short_name

  has_many :districts

  def include_district?(district)
  	districts.include?(district)
  end

  def include_municipality?(municipality)
  	municipalities.include?(municipality)
  end

end
