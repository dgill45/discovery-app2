class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true, uniqueness: true
    has_one :profile 
    has_many :events, through: :users_events
end
