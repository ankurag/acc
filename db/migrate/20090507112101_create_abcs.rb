class CreateAbcs < ActiveRecord::Migration
  def self.up
    create_table :abcs do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :abcs
  end
end
