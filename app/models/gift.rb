class Gift < ActiveRecord::Base

    belongs_to :giver
    belongs_to :recipient

end