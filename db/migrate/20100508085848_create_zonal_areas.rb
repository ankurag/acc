class CreateZonalAreas < ActiveRecord::Migration
  def self.up
    create_table :zonal_areas do |t|
      t.string :name

      #foreign keys
      t.integer :company_id
      t.integer :med_rep_id
      t.timestamps
    end
  end

  def self.down
    drop_table :zonal_areas
  end
end
