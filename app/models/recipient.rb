class Recipient < ActiveRecord::Base

    has_many :gifts
    has_many :givers, through: :gifts

    validates :name, presence: true 

    accepts_nested_attributes_for :gifts
    attr_accessor :gift_ids

end