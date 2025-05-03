class SponsoredProductsController < ApplicationController
  before_action :set_sponsored_product, only: %i[show edit update destroy]

  def index
    @sponsored_products = SponsoredProduct.all
  end

  def show; end

  def new
    @sponsored_product = SponsoredProduct.new
  end

  def create
    @sponsored_product = SponsoredProduct.new(sponsored_product_params)
    if @sponsored_product.save
      redirect_to @sponsored_product, notice: 'Produto patrocinado criado com sucesso.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @sponsored_product.update(sponsored_product_params)
      redirect_to @sponsored_product, notice: 'Produto patrocinado atualizado com sucesso.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @sponsored_product.destroy
    redirect_to sponsored_products_url, notice: 'Produto patrocinado removido.'
  end

  private

  def set_sponsored_product
    @sponsored_product = SponsoredProduct.find(params[:id])
  end

  def sponsored_product_params
    params.require(:sponsored_product).permit(:company_id, :product_name, :start_date, :end_date, :price_paid)
  end
end
