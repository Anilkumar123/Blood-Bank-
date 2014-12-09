class Recipient < ActiveRecord::Base
	validates :name,:address,:location,:hospital_name,:ph_number,:email,presence:true
	
end
