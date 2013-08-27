class Profile < ActiveRecord::Base
  attr_accessible :address, :dob, :email, :experience, :first_name, :last_name, :tech_known
end
