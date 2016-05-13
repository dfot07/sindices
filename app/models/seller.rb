class Seller < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :lastnamev, :namev, :lastnamec, :namec, :inscription, :dateinscription, :user
end
