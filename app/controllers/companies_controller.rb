class CompaniesController < InheritedResources::Base

  private

    def company_params
      params.require(:company).permit(:name, :description, :location, :price_range, :website_url, :contact_email, :contact_phone)
    end

end
