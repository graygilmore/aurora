class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  acts_as_authentic do |config|
    config.merge_validates_length_of_password_field_options({ minimum: 6 })
  end
end
