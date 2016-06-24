class User < ApplicationRecord
  before_save { email.downcase! }
  validates :name, presence: true,
                   length: { within: 4..50,
                            too_long: "Your name can only be %{count} characters long",
                            too_short: "Your name must be more than %{count} characters long"
                          }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true,
                    length:     {maximum: 255},
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
