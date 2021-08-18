class Recipients < ApplicationController

    has_many :gifts
    has_many :givers, through: gifts

end