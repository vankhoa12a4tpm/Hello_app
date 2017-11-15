class User < ApplicationRecord
  before_save{self.email = email.downcase}
<<<<<<< HEAD
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}
=======
  validates :name, presence: true, length: {maximum: Settings.user.maximun_name}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: Settings.user.maximun_email},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  validates :password, presence: true, length: {minimum: Settings.user.minimum_pass}
>>>>>>> 98a89db... Make a basic User model (including secure passwords)
end
