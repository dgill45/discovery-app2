class Event < ApplicationRecord
    belongs_to :activity
    has_many :users
end
