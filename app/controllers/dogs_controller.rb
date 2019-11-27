class DogsController < ApplicationController
  def new
    @dog = Dog.new
  end

  def index
    @dogs = Dog.all
  end

  def create
    @dog = Dog.create(dog_params)
    redirect_to root_path
  end

  private

  def dog_params
    params.require(:dog).permit(:noises)
  end

  def show
    @dog = Dog.find(params[:id])
  end
end
