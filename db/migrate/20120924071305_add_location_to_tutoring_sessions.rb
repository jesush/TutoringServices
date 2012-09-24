class AddLocationToTutoringSessions < ActiveRecord::Migration
  def change
    add_column :tutoring_sessions, :location, :string
  end
end
