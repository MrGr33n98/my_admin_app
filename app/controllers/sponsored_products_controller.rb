class SponsoredProductsController < InheritedResources::Base

  private

    def sponsored_product_params
      params.require(:sponsored_product).permit(:company_id, :product_name, :start_date, :end_date, :price_paid, :status)
    end

end
