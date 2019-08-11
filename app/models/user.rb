class User < ApplicationRecord
  has_many :users_flats
  has_many :flats, :through => :users_flats
end
