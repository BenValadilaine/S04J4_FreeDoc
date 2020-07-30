class City < ApplicationRecord
  has_many :doctors
  has_many :patients
  belongs_to :city, optional: true
end
