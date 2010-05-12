class Bank < ActiveRecord::Base
  has_one :account
  has_one :address
  
end
