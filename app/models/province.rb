class Province < ApplicationRecord  
  belongs_to :region
  has_many :gigs
  has_many :requests
  has_many :users
end
