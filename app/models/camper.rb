class Camper < ApplicationRecord
    has_many :camp_activities
    has_many :activities, through: :camp_activities
    validates :name, uniqueness: true
    validates :age, numericality: { greater_than_or_eaqual_to: 8, less_than_or_equal_to: 18 }
end
