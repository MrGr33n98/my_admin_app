# app/controllers/product_accesses_controller.rb
class ProductAccessesController < InheritedResources::Base
  private

    def product_access_params
      params.require(:product_access).permit(:member_id, :product_name, :access_level, :granted_at, :revoked_at)
    end
end
