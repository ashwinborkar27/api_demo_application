class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :last_name
      t.text :description

      t.timestamps
    end
  end
end



