class RecipientsController < ApplicationController
	def new
		 @recipient = Recipient.new()
	end
    def create
	  @recipient = Recipient.new(recipient_params)
	  if @recipient.save
	    redirect_to   recipients_path 
	    flash[:notice] = "Successfully Created"
	  else
		flash[:error] = "Recipient field id empty"
		redirect_to new_recipient_path
	  end
	end

	def index
		    	#debugger
	  
	  if !params[:bg].nil?
	  	@donors = Donor.find_by_blood_group(params[:bg])
	  else
	  	@donors = Donor.all
	  end
	   @recipients = Recipient.all
	  #@donors = Donor.find_by_blood_group("#{params['bg']}")
	end
	
	def show
    	@recipients = Recipient.find(params[:id])
      if !params[:bg].nil?
	  	@donors = Donor.find_by_blood_group(params[:bg])
	  	redirect_to recipients_path(:bg =>params[:bg])
	  end

    end
    def mm
    	@recipients = Recipient.all
    end
	def destroy
	  @recipient =Recipient.find(params[:id])
	  @recipient.destroy
	  redirect_to recipients_path
	end
	
	private

	def recipient_params 
	    params.require(:recipient).permit(:name,:address,:location,:hospital_name,:ph_number,:email)
	end

end
