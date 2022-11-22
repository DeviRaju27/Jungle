class User < ApplicationRecord

  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: { case_sensitive: false}, presence: true
  validates :password, length: {minimum: 3}, presence: true
  validates :password_confirmation, length: {minimum: 3}, presence: true

  def self.authenticate_with_credentials(email, password)
    email_new = email.downcase
    user = User.find_by_email(email_new)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end

end
