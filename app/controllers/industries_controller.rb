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
      redirect_to industry_path(@industry)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def delete

  end



  private
  def industry_params
    params.require(:industry).permit(:name, :description)
  end

end
