class LeadsController < InheritedResources::Base

  private

    def lead_params
      params.require(:lead).permit(:company_id, :lead_type, :client_name, :client_email, :client_phone, :date, :value)
    end

end
