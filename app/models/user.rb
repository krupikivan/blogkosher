class User < ApplicationRecord
    # Self is referencing each object of the user class 
    before_save { self.email = email.downcase }
    
    validates :username, presence: true, 
                uniqueness: { case_sensitive: false }, 
                length: { minimum: 3, maximum: 25 }

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :email, presence: true, 
                uniqueness: { case_sensitive: false },
                length: { maximum: 105 },
                format: { with: VALID_EMAIL_REGEX }
    # User has many articles
    has_many :articles

    has_secure_password
end
