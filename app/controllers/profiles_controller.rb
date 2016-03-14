class ProfilesController < InheritedResources::Base

  def edit
    @profile = current_user.profile
  end

  def show
    @profile = Profile.friendly.find(params[:id])
    if request.path != profile_path(@profile)
      redirect_to @profile, status: :moved_permanently
    end
  end

  private

  def profile_params
    #params.require(:profile).permit(:user_id, :name, :headline, :bio, :address_one, :address_two, :city, :state, :postal, :email, :phone, :group, :website, specialty_ids: [])
    params.require(:profile).permit(:name, :headline, :bio, :address_one, :address_two, :city, :state, :postal, :email, :phone, :group, :website, :profile_photo, specialty_ids: [])
  end
end
