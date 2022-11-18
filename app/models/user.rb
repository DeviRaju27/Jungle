class User < ApplicationRecord

  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: { case_sensitive: false}, presence: true
  validates :password, length: {minimum: 3}, presence: true

end
