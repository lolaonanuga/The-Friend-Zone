class User < ApplicationRecord
    has_many :user_interests
    has_many :interests, through: :user_interests


    def match
    end
end

