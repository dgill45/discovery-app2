class Event < ApplicationRecord
    belongs_to :activity
    validates :desc, length: {max: 75}
    has_many :users, through: :users_events
end
