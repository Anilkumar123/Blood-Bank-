class AdminController < ApplicationController
	def index
		@recipients=Recipient.all
		
	end
	def new
		
	end
	def show
		 @recipient =Recipient.find(params[:id])
		end
	

	def destroy
	  @recipient =Recipient.find(params[:id])
	  @recipient.destroy
	  redirect_to admin_index_path
	end
	private

	def recipient_params 
	    params.require(:recipient).permit(:name,:address,:location,:hospital_name,:ph_number,:email)
	end
	

end
