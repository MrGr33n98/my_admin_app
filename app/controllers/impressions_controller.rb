class ImpressionsController < InheritedResources::Base

  private

    def impression_params
      params.require(:impression).permit(:company_id, :impression_type, :date, :value)
    end

end
