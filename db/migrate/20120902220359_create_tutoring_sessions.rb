class CreateTutoringSessions < ActiveRecord::Migration
  def change
    create_table :tutoring_sessions do |t|
      t.time :start_time
      t.time :end_time
      t.date :date
      t.string :description

      t.timestamps
    end
  end
end
