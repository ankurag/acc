class JournalLine < ActiveRecord::Base
  has_one :account
end
