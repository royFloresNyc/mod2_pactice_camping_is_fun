class SignUp < ApplicationRecord
    belongs_to :camper
    belongs_to :activity

    def pretty_time
        hour = self.time 
        if hour == 0
            "12:00 am"
        elsif hour > 12
            "#{hour -12}:00 pm"
        else 
            "#{hour}:00 am"
        end 
    end 
end 