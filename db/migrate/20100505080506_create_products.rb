class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.decimal :purchase_price
      t.decimal :sale_price
      t.decimal :vat_percent

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
