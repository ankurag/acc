class CreateMedReps < ActiveRecord::Migration
  def self.up
    create_table :med_reps do |t|
      t.string :name

      
      t.timestamps
    end
  end

  def self.down
    drop_table :med_reps
  end
end
