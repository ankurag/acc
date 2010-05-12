class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :name
      t.string :account_code
      t.decimal :opening_bal
      
      t.integer :account_group_id

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
