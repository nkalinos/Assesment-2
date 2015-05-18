class IndustriesController < ApplicationController

  def index
    @industries = Industry.all
  end

  def new
    @industry = Industry.new
  end

  def show
    @industry = Industry.find(params[:id])
    @industries = Industry.all
  end

  def create
    @industry = Industry.new(industry_params)
    if @industry.save
      flash[:success] = "Industry Successfuly Created! "
      redirect_to industry_path(@industry)
    else
      render :new
    end
  end

  def edit
    @industry = Industry.find(params[:id])
  end

  def update
    @industry = Industry.find(params[:id])
    if @industry.update(industry_params)
      flash[:success] = "Industry Successfuly Updated! "

      redirect_to industries_path
    else
      render :edit
    end
  end

  def destroy
    @industry = Industry.find(params[:id])
    @company = Company.find(params[:company_id])
    @industry.destroy
    flash[:success] = "Industry Successfuly Deleted! "

    redirect_to industries_path

  end



  private
  def industry_params
    params.require(:industry).permit(:name, :description)
  end

end
