class Category < ApplicationRecord
    has_many :interests
    validates :name, presence: true uniqueness: true
end
