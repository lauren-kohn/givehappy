class Recipient < ActiveRecord::Base

    has_many :gifts
    has_many :givers, through: :gifts

    validates :name, presence: true 

    accepts_nested_attributes_for :gifts

end