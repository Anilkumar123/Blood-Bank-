module ApplicationHelper
	def search_donors(bloodgroup)
		if user_signed_in?
		 	Donor.where(:blood_group => bloodgroup)
		end
	end

end
