class StimsController < ApplicationController

  def index
    @stims = Stim.all
  end

  def show
    @stim = Stim.find(params[:id])
  end

  def new
    @stim = Stim.new
  end

  def create
    @stim = Stim.new(stim_params)
    if @stim.save
      redirect_to @stim
    else
      render 'new'
    end
  end

  def edit
    @stim = Stim.find(params[:id])
  end

  def update
    @stim = Stim.find(params[:id])
    if @stim.update_attributes(stim_params)
      flash[:success] = "Stim updated"
      redirect_to @stim
    else
      render 'edit'
    end
  end

  private

    def stim_params
      params.require(:stim).permit(:name, :description, :source)
    end
end
