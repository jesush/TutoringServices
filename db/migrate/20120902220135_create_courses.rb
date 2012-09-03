class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_type
      t.integer :number
      t.string :name
      t.integer :section_number
      t.string :days
      t.string :semester
      t.integer :year
      t.string :description
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
