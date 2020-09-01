class Camper < ApplicationRecord
    has_many :camp_activities
    has_many :activities, through: :camp_activities

end
