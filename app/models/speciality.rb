class Speciality < ApplicationRecord
  has_many :join_table_doctors_specialities
  has_many :doctors, through: :join_table_doctors_specialities
end
