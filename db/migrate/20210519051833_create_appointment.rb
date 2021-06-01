class CreateAppointment < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.text :description
      
   
      t.timestamps
    end
  end
end





