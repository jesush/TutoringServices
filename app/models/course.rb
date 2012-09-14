class Course < ActiveRecord::Base

  has_many :tutoring_sessions
  has_many :users, through: :tutoring_sessions

  belongs_to :professor, class_name: "User"

  #has_many :attendees, class_name: "Attendment"

  belongs_to :user
  attr_accessible :days, :description, :end_time, :name, :number, :section_number, :semester, :start_time, :course_type, :year, :professor_id
end
