class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.date :date
      t.string :invoice_no

      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
