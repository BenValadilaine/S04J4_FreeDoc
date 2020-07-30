class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :join_table_doctors_specialities
  has_many :specialities, through: :join_table_doctors_specialities
  belongs_to :city, optional: true
end
