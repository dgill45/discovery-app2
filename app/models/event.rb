class Event < ApplicationRecord
    belongs_to :activity, class_name: "Activity", optional: true
    has_many :users
end
