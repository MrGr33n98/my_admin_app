class LeadSaasController < InheritedResources::Base

  private

    def lead_saa_params
      params.require(:lead_saa).permit(:name, :email, :company_name, :source, :stage, :captured_at)
    end

end
