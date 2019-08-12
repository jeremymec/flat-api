class User < ApplicationRecord
  self.primary_key = 'uid'
  has_many :users_flats
  has_many :flats, :through => :users_flats
end
