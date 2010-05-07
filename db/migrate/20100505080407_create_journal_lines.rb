class CreateJournalLines < ActiveRecord::Migration
  def self.up
    create_table :journal_lines do |t|
      t.decimal :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :journal_lines
  end
end
