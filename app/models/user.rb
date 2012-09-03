class User < ActiveRecord::Base
has_and_belongs_to_many :courses
has_many :tutoring_sessions

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name , presence: true

  # Setup accessible (or protected) attributes for your  
  attr_accessible :email, :password, :password_confirmation, :remember_me, :classification, :first_name, :last_name, :nick_name, :phone_number, :user_type
end
