class CreateJoinTableDoctorsSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_doctors_specialities do |t|
      t.belongs_to :speciality, index: true
      t.belongs_to :doctor, index: true 
      t.timestamps
    end
  end
end
