class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      
      t.decimal :sale_price
      t.decimal :purchase_price
      t.decimal :quantity
      t.string :batch_no

      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
