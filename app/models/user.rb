class User < ActiveRecord::Base
#has_and_belongs_to_many :courses
has_many :tutoring_sessions
has_many :courses , through: :tutoring_sessions

has_many :assigned_courses, class_name: "Course", foreign_key: "professor_id"

#has_and_belongs_to_many :attended, class_name: "TutoringSession"

has_many :attendments
has_many :attended, through: :attendments, source: :tutoring_session

has_attached_file :profile_image, styles: { medium: "300x300>", thumb: "100x100>" }

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name , presence: true

  # Setup accessible (or protected) attributes for your  
  attr_accessible :email, :password, :password_confirmation, :remember_me, :classification, :first_name, :last_name, :nick_name, :phone_number, :user_type, :profile_image, :volunteering
  

  def full_name
  	"#{self.first_name} #{self.last_name}"
  end
end
