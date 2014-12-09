class Donor < ActiveRecord::Base
	validates :firstname,presence:true, length: { minimum:5, maximum: 140 }
	validates :lastname,presence:true, length: { minimum:5, maximum: 140 }
	validates :gender,:address,:location,:blood_group,presence:true
	validates :ph_number,presence:true, length: { minimum:5, maximum: 14 }
	validates :age, inclusion: { in: 21..44 } 
	validates :address,presence:true, length: { minimum:5, maximum: 140 }
	
end

