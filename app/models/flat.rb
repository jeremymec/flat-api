class Flat < ApplicationRecord
  has_many :users_flats
  has_many :users, :through => :users_flats
end
