class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name


      #foreign keys
      t.integer :account_id
      t.integer :address_id
      t.integer :zonal_area_id

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
