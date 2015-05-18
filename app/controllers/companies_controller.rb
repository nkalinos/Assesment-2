class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end
  def new
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
    @companies = Company.all
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:success] = "Company Successfuly Created! "
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      flash[:success] = "Company Successfuly Updated! "

      redirect_to companies_path
    else
      render :edit
    end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    flash[:success] = "Company Successfuly Deleted! "

    redirect_to companies_path

  end

  private
  def company_params
    params.require(:company).permit(:company_name, :description, :price)
  end

end
