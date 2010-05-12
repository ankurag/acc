class CreateSundryDebtors < ActiveRecord::Migration
  def self.up
    create_table :sundry_debtors do |t|



      # foreign keys
      t.integer :account_id
      t.integer :address_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sundry_debtors
  end
end
