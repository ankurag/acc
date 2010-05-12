class CreateBanks < ActiveRecord::Migration
  def self.up
    create_table :banks do |t|
      t.string :name

      #foreign keys
      t.integer :address_id
      t.integer :account_id

      t.timestamps
    end
  end

  def self.down
    drop_table :banks
  end
end
