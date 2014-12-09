class RolesController < ApplicationController

	def new
		 @roles = Role.new()
	end
    def create
	  @role = Role.new(donor_params)
	  @role.save
	  redirect_to roles_path
	end

	def index
	  @roles = Role.all
	end
	def show
    	@role = Role.find(params[:id])
    end
	def destroy
	  @role =Role.find(params[:id])
	  @role.destroy
	  redirect_to roles_path
	end
	
	private
	

	def donor_params 
	    params.require(:role).permit(:roletype)
	end

end

end
