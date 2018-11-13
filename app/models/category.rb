class Category < ApplicationRecord
    has_many :interests
    has_many :user_interests, through: :interests
    accepts_nested_attributes_for :interests
  
end
