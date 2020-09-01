class CreateCampActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :camp_activities do |t|
      t.belongs_to :camper, null: false, foreign_key: true
      t.belongs_to :activity, null: false, foreign_key: true
      t.integer :time
    end
  end
end
