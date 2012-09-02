class User < ActiveRecord::Base
  attr_accessible :classification, :email, :first_name, :last_name, :nick_name, :phone_number, :type
end
