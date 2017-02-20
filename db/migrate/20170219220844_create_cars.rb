class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :driver_licence
      t.integer :year
      t.string :make
      t.string :model
      t.string :licence_plate
      t.string :color

      t.timestamps
    end
  end
end
