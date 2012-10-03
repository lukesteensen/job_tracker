class Job < ActiveRecord::Base
  belongs_to :company
  has_and_belongs_to_many :cities
  has_and_belongs_to_many :technologies
  attr_accessible :company_id, :title, :application_url, :description,
    :challenge_factor, :likelihood_factor, :travel_percentage, :applied,
    :requires_cover_letter, :requires_long_application, :city_ids,
    :technology_ids

  def city_names
    cities.map(&:name).join ', '
  end

  def technology_names
    technologies.map(&:name).join ', '
  end
end

