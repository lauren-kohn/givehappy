class Recipient < ActiveRecord::Base

    has_many :gifts
    has_many :givers, through: gifts

end