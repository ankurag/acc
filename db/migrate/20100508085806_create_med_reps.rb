class CreateMedReps < ActiveRecord::Migration
  def self.up
    create_table :med_reps do |t|
      t.string :name

      #foreing keys
      t.integer :company_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :med_reps
  end
end
