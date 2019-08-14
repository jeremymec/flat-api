class User < ApplicationRecord
  self.primary_key = 'uid'
  belongs_to :flat, optional: true
end
