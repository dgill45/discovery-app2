class Activity < ApplicationRecord
    has_many :events 
    belongs_to :category, class_name: "Category", optional: true  
end
