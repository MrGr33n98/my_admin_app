class MembersController < InheritedResources::Base

  private

    def member_params
      params.require(:member).permit(:name, :email, :role, :company_id, :status, :joined_at)
    end

end
