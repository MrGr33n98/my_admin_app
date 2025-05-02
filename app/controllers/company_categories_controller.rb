class CompanyCategoriesController < ApplicationController
  before_action :set_company_category, only: %i[show edit update destroy]

  def index
    @company_categories = CompanyCategory.all
  end

  def show; end

  def new
    @company_category = CompanyCategory.new
  end

  def edit; end

  def create
    @company_category = CompanyCategory.new(company_category_params)
    if @company_category.save
      redirect_to @company_category, notice: 'Associação criada com sucesso.'
    else
      render :new
    end
  end

  def update
    if @company_category.update(company_category_params)
      redirect_to @company_category, notice: 'Associação atualizada.'
    else
      render :edit
    end
  end

  def destroy
    @company_category.destroy
    redirect_to company_categories_url, notice: 'Associação removida.'
  end

  private

  def set_company_category
    @company_category = CompanyCategory.find(params[:id])
  end

  def company_category_params
    params.require(:company_category).permit(:company_id, :category_id)
  end
end
