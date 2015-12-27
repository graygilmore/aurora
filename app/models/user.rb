class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
end
