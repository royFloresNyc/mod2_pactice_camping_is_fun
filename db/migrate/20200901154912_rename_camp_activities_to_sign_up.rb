class RenameCampActivitiesToSignUp < ActiveRecord::Migration[6.0]
  def change
    rename_table :camp_activities, :sign_ups
  end
end
