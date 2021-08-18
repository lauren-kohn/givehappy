class Giver < ActiveRecord::Base

    has_many :gifts
    has_many :recipients, through: :gifts
    has_secure_password

end