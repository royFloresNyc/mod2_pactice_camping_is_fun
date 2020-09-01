class SignUpsController < ApplicationController
    def new
        @sign_up = SignUp.new
    end 

    def create
        @sign_up = SignUp.find_or_create_by(params.require(:sign_up).permit(:camper_id, :activity_id, :time))
        redirect_to camper_path(@sign_up.camper_id)
    end 

end 