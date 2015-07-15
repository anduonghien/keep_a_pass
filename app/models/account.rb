class Account < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :username, presence: true
  validates :password, presence: true
end
