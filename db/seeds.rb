# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all

#On ajoute 100 docteurs et 100 patients
speciality = ["Généraliste", "Allergologue", "Dentiste", "Urologue", "Cardiologue", "Podologue", "Neurologue", "Gynécologue", "Gériatre"]

speciality.each do |spe|
  Speciality.create(name: spe)
end

25.times do
  city = City.create(name: Faker::Address.city)
end

100.times do
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: City.all.sample)

  doctor.specialities << Speciality.where(name: speciality.sample)

  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

100.times do
  appointment = Appointment.create(date: Faker::Date.in_date_period(year: 2020), doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample)
end
