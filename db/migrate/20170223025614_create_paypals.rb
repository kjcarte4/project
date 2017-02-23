class CreatePaypals < ActiveRecord::Migration[5.0]
  def change
    create_table :paypals do |t|
      t.string :paypaluser

      t.timestamps
    end
  end
end
