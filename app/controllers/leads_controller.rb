class LeadsController < ApplicationController
  before_action :set_lead, only: %i[show edit update destroy]

  def index
    @leads = Lead.all
  end

  def show; end

  def new
    @lead = Lead.new
  end

  def edit; end

  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to @lead, notice: "Lead criado com sucesso."
    else
      render :new
    end
  end

  def update
    if @lead.update(lead_params)
      redirect_to @lead, notice: "Lead atualizado com sucesso."
    else
      render :edit
    end
  end

  def destroy
    @lead.destroy
    redirect_to leads_url, notice: "Lead excluído."
  end

  private

  def set_lead
    @lead = Lead.find(params[:id])
  end

  def lead_params
    params.require(:lead).permit(
      :nome, :email, :cargo, :score, :company_id, :product_id,
      :porte_empresa, :categoria_desejada, :status, :distribuido_em, :convertido_em
    )
  end
end
class LeadsController < ApplicationController
  before_action :set_lead, only: %i[show edit update destroy]

  def index
    @leads = Lead.all
  end

  def show; end

  def new
    @lead = Lead.new
  end

  def edit; end

  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to @lead, notice: "Lead criado com sucesso."
    else
      render :new
    end
  end

  def update
    if @lead.update(lead_params)
      redirect_to @lead, notice: "Lead atualizado com sucesso."
    else
      render :edit
    end
  end

  def destroy
    @lead.destroy
    redirect_to leads_url, notice: "Lead excluído."
  end

  private

  def set_lead
    @lead = Lead.find(params[:id])
  end

  def lead_params
    params.require(:lead).permit(
      :nome, :email, :cargo, :score, :company_id, :product_id,
      :porte_empresa, :categoria_desejada, :status, :distribuido_em, :convertido_em
    )
  end
end
