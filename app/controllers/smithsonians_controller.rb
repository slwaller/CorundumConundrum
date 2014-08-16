class SmithsoniansController < ApplicationController

  def index
    @smithsonians = Smithsonian.all
  end

  def show
    @smithsonian = Smithsonian.find params[:id]
    @scientist = @smithsonian.scientists.new
  end

  def new
    @smithsonian = Smithsonian.new
  end

  def create
    @smithsonian = Smithsonian.new smithsonian_params
    if @smithsonian.save
    redirect_to smithsonians_path
    else 
      render :new
    end
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
    params.require(:smithsonian).permit(:name, :description)
  end

  def scientist_params
    params.require(:scientist).permit(:name, :institution)
  end

end
