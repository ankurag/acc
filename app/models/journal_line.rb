class JournalLine < ActiveRecord::Base
  belongs_to :journal_entry
  has_one :account
end
