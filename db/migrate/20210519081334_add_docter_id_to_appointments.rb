class AddDocterIdToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :docter, null: false, foreign_key: true
    add_reference :appointments, :patient, null: false, foreign_key: true
  end
end
