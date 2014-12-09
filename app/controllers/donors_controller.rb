class DonorsController < ApplicationController
	def new
		 @donor = Donor.new()

	end
    def create
	  @donor = Donor.new(donor_params)
	  if @donor.save
	    redirect_to donor_path(@donor.id)
	    flash[:notice] = "Successfully Created"
	  else
		flash[:error] = "Donor field id empty"
		redirect_to new_donor_path
	  end
	end
	def show
    	@donor = Donor.find(params[:id])

    end
    

	def index
	  @donors = Donor.all

	end
	def edit
		@donor = Donor.find(params[:id])
	end
	def update
		@donor = Donor.find(params[:id])
		if @donor.update_attributes(donor_params)
			flash[:notice] = "Donor updated succesfully"
			redirect_to donors_path
		else
			flash[:error] = "Error while updating Donor"
			render :edit
		end
	end

	
	def destroy
	  @donor =Donor.find(params[:id])
	  @donor.destroy
	  redirect_to donors_path
	end
	
	private


	def donor_params 
	    params.require(:donor).permit(:firstname, :lastname,:gender, :address, :location, :age,:ph_number, :blood_group)
	end

end
