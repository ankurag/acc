class CreateSundryDebtors < ActiveRecord::Migration
  def self.up
    create_table :sundry_debtors do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :sundry_debtors
  end
end
