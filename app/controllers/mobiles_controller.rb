class MobilesController < ApplicationController
  def index
    @mobiles = Mobile.all
  end

  def new
    @mobile = Mobile.new 
  end

  def create
    @mobile = Mobile.create(mobile_params)
    
    redirect_to mobiles_path
  end

  def show
    @mobile = Mobile.find(params[:id])
  end

  def edit
    @mobile = Mobile.find(params[:id])
  end

  def update
    @mobile = Mobile.find(params[:id])
    @mobile.update(mobile_params)

    redirect_to mobiles_path
  end

  def destroy 
    @mobile = Mobile.find(params[:id])
    @mobile.destroy

    redirect_to mobiles_path
  end

  private 

  def mobile_params
    params.require(:mobile).permit(:company, :model, :color, :price) 
  end

end
