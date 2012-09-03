class TutoringSession < ActiveRecord::Base
  has_one :course
  has_one :user

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  attr_accessible :date, :description, :end_time, :start_time, :user_id, :course_id
end
