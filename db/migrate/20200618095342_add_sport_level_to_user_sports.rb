class AddSportLevelToUserSports < ActiveRecord::Migration[6.0]
  def change
    add_column :user_sports, :sport_level, :integer
  end
end
