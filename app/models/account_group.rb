class AccountGroup < ActiveRecord::Base

  has_many :accounts
  has_one :address
end
