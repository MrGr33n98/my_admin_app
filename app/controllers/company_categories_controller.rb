class CompanyCategoriesController < InheritedResources::Base

  private

    def company_category_params
      params.require(:company_category).permit(:company_id, :category_id)
    end

end
