class Customer < ActiveRecord::Base

  #children
  has_many :rentals
  has_many :orders
end
