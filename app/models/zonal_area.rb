class ZonalArea < ActiveRecord::Base

  belongs_to :company
  has_one :med_rep
end
