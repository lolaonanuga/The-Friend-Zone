
class User < ApplicationRecord
    has_many :user_interests
    has_many :interests, through: :user_interests
    
    accepts_nested_attributes_for :interests
    validates :username, uniqueness: true, presence: true
    has_secure_password

end
