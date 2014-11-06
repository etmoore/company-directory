class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def edit
  end

  def new
  end

  def update
  end

  def create
  end

  def destroy
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :city, :nonprofit)
  end
end
