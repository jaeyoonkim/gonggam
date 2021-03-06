class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: true, length: { maximum: 255 },
                   format: { with: VALID_EMAIL_REGEX },
                   uniqueness: { case_sensitive: false }
  has_secure_password
  # validates :password, presence: true, length: { minimum: 6 }
  # validates_confirmation_of :password_confirmation, presence: true , :if => :validate_password?
end
