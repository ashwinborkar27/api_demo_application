class CreateDocter < ActiveRecord::Migration[6.1]
  def change
    create_table :docters do |t|
      t.string :name

      t.timestamps
    end
  end
end
