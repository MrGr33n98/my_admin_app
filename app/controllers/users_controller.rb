class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:user).permit(:name, :email, :primary_phone, :secondary_phone, :company_name, :admin, :email_confirmed)
    end

end
