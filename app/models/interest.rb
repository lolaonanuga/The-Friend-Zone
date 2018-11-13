class Interest < ApplicationRecord
    has_one :category
    has_many :user_interests
    has_many :users, through: :user_interests
   accepts_nested_attributes_for :user_interests
end
