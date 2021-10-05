class Activity < ApplicationRecord
    has_many :events 
    belongs_to :category 
end
