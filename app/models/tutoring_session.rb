class TutoringSession < ActiveRecord::Base
  attr_accessible :date, :description, :end_time, :start_time
end
