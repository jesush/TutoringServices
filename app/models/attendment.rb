class Attendment < ActiveRecord::Base
  attr_accessible :tutoring_session_id, :user_id

  belongs_to :user
  belongs_to :tutoring_session
end
