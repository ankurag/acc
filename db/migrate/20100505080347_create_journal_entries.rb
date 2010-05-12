class CreateJournalEntries < ActiveRecord::Migration
  def self.up
    create_table :journal_entries do |t|
      t.date :date
      t.string :narration
      t.boolean :status

      t.integer :journal_line_id

      t.timestamps
    end
  end

  def self.down
    drop_table :journal_entries
  end
end
