class City < ActiveRecord::Base
  has_and_belongs_to_many :jobs
  attr_accessible :name, :coolness_factor
end

