class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :orgin
      t.string :destination
      t.time :leave_time
      t.integer :passengers

      t.timestamps
    end
  end
end
