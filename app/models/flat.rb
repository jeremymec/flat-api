require 'securerandom'

class Flat < ApplicationRecord
  has_many :users
  has_one :todo

  before_create :set_invite_code

  private

  def set_invite_code
    loop do
      self.invite = SecureRandom.urlsafe_base64(6)
      break unless Flat.where(invite: invite).exists?
    end
  end

end
