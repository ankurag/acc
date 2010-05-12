class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :district
      t.string :state
      t.string :pincode
      t.string :tin_no
      t.string :pan_no

      t.integer :telephone_id
      t.integer :telephone_id
      t.string  :email

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
