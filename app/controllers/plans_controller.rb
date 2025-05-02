class PlansController < InheritedResources::Base

  private

    def plan_params
      params.require(:plan).permit(:name, :description, :price, :billing_cycle, :active)
    end

end
