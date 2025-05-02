class CompanyImagesController < InheritedResources::Base

  private

    def company_image_params
      params.require(:company_image).permit(:company_id, :image_type)
    end

end
