class JournalEntry < ActiveRecord::Base
  has_many :journal_lines
end
