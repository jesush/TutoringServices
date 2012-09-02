class Course < ActiveRecord::Base
  attr_accessible :days, :description, :end_time, :name, :number, :section_number, :semester, :start_time, :type, :year
end
