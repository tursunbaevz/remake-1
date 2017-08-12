class HomeController < ApplicationController

	def index
		@projects = Project.all
	end
	
	private


	def project_params
      params.require(:project).permit(:name, :content)
    end


end
