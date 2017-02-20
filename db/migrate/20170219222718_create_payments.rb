class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :card_name
      t.string :card_fname
      t.string :card_middleInit
      t.string :card_lname
      t.date :exp_date
      t.integer :card_number
      t.integer :security_code

      t.timestamps
    end
  end
end
