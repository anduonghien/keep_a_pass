class Account < ActiveRecord::Base
  attr_encrypted :password, key: 'duonghienan.dha@gmail.com', attribute: 'password_encrypted'

  belongs_to :user

  validates :title, presence: true
  validates :username, presence: true
  validates :password, presence: true
end
