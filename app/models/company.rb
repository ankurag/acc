class Company < ActiveRecord::Base
  has_one :address
  has_one :account
  has_many :parties
  has_many :products
end
