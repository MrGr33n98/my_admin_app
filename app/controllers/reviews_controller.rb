class ReviewsController < InheritedResources::Base

  private

    def review_params
      params.require(:review).permit(:company_id, :content, :rating, :date)
    end

end
