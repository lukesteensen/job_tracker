class Company < ActiveRecord::Base
  has_many :jobs
  attr_accessible :name, :website_url, :description, :sarah_thoughts,
    :coolness_factor
end

