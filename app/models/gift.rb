class Gift < ActiveRecord::Base

    belongs_to :giver
    belongs_to :recipient

    validates :name, uniqueness: true, presence: true 

    accepts_nested_attributes_for :recipient

end