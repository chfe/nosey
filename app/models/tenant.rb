class Tenant < ActiveRecord::Base
  has_many :ads
end
