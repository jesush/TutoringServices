class TutoringSession < ActiveRecord::Base
  #has_one :course
  #has_one :user
  belongs_to :course
  belongs_to :user

  #has_and_belongs_to_many :attendees , class_name: "User"

  has_many :attendments
  has_many :attendees, through: :attendments, source: :user

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :course_id, presence: true

  attr_accessible :date, :description, :end_time, :start_time, :user_id, :course_id, :attendee_ids

end
