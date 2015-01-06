class Ad < ActiveRecord::Base
  belongs_to :user
  belongs_to :tenant
end
