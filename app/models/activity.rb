class Activity < ApplicationRecord
    has_many :camp_activities
    has_many :campers, through: :camp_activities
end
