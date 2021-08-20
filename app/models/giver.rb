class Giver < ActiveRecord::Base

    has_many :gifts
    has_many :recipients, through: :gifts

    validates :name, uniqueness: true, presence: true 
    
    has_secure_password

end