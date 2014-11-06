class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
    @companies = Company.all
  end

  def show
  end

  def edit
  end

  def new
    @company = Company.new
  end

  def update
    @company.update(company_params)
    redirect_to @company
  end

  def create
    @company = Company.create(company_params)
    redirect_to @company
  end

  def destroy
    @company.destroy
    redirect_to root_path
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :city, :nonprofit)
  end
end
