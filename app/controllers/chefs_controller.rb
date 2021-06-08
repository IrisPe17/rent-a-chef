class ChefsController < ApplicationController
  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    if @chef.save
      redirect_to @chef
    else
      render :new
    end
  end

  private

  def chef_params
    params.require(:chef).permit(:name, :price, :location, :description)
  end
end
