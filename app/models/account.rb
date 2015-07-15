class Account < ActiveRecord::Base
  attr_encrypted :password, key: Rails.application.secrets.key_encrypted.to_s, attribute: 'password_encrypted'

  belongs_to :user

  validates :title, presence: true
  validates :username, presence: true
  validates :password, presence: true
end
