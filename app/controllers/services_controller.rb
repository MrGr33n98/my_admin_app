class ServicesController < InheritedResources::Base

  private

    def service_params
      params.require(:service).permit(:company_id, :name, :description, :price)
    end

end
