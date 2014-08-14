class SmithsoniansController < ApplicationController

  def index
    @smithsonian = Smithsonian.all
  end

  def show
    @smithsonian = Smithsonian.find params[:id]
    @scientist = @smithsonian.scientists.new
  end

  def new
    @smithsonian = Smithsonian.new
  end

  def create
    @smithsonian = Smithsonian.create smithsonian_params
    redirect_to smithsonians_path
  end

  def edit
    @smithsonian = Smithsonian.find params[:id]
  end

  def update
    @smithsonian = Smithsonian.find params[:id]
    @smithsonian.update_attributes smithsonian_params
    redirect_to smithsonians_path
  end

  def destroy
    @smithsonian = Smithsonian.find params[:id]
    @smithsonian.delete
    redirect_to smithsonians_path
  end

  def create_scientist
    @smithsonian = Smithsonian.find params[:id]
    @smithsonian.scientists.create scientist_params
    redirect_to smithsonian_path(@smithsonian)
  end

  def delete_scientist
    @smithsonian = Smithsonian.find params[:id]
    @scientist = scientist.find params[:scientist_id]
    @scientist.delete
    redirect_to @smithsonian
  end

  private

  def smithsonian_params
    params.require(:smithsonian).permit(#MAKE THESE TOMORROW)
  end

  def scientist_params
    params.require(:scientist).permit(#MAKE THESE TOMORROW)
  end

end
