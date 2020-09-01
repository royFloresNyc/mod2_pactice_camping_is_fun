class CampActivitiesController < ApplicationController
    def new
        @camp_activity = CampActivity.new
    end 

    def create
        @camp_activity = CampActivity.find_or_create_by(params.require(:camp_activity).permit(:camper_id, :activity_id, :time))
        redirect_to camper_path(@camp_activity.camper_id)
    end 

end 