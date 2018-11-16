
class User < ApplicationRecord
    has_many :user_interests
    has_many :messages
    has_many :interests, through: :user_interests

    accepts_nested_attributes_for :interests
    validates :username, uniqueness: true, presence: true
    has_secure_password

    mount_uploader :picture, PictureUploader
   
    

    def match
        people = self.interests.map{|interest| interest.users}.flatten
        people_uniq=people.uniq
        array = people_uniq.sort_by {|x| people.count(x)}
        return array[1..3]
      end

    def shared_interests(user)
        array = []
        user.interests.each do |interest| 
            if self.interests.include?(interest)
                array << interest 
            end
        end
        array
    end

    


end
