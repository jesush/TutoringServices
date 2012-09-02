class Course < ActiveRecord::Base
has_and_belongs_to_many :users
  attr_accessible :days, :description, :end_time, :name, :number, :section_number, :semester, :start_time, :type, :year
end
