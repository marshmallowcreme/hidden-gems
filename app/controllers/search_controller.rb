class SearchController < InheritedResources::Base
  
  def index
  	if request.get?
		@location = request.location
	else
		@location = params[:location]
		@profiles = Profile.near(@location, 25)
		render :template => 'profiles/index'
	end
  end

end