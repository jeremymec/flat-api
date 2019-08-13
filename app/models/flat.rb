require 'securerandom'

class Flat < ApplicationRecord
  has_many :users_flats
  has_many :users, :through => :users_flats

  before_create :set_invite_code

  private

  def set_invite_code
    loop do
      self.invite = SecureRandom.urlsafe_base64(6)
      break unless Flat.where(invite: invite).exists?
    end
  end

end
