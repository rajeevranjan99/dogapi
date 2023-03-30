class DogsController < ApplicationController
  def index 
    #@dog = Dog.all 
    render json: Dog.all 
  end
  def create 
    dog = Dog.create(dog_params)
    render json: dog
  end 
  def update 
    dog = Dog.find(params[:id])
    dog.update(dog_params)
    render json: dog 
  end 
  def destroy 
    Dog.destroy(params[:id])
  end 
private 
  def dog_params 
    params.require(:dog).permit(:name, :age)
  end
end
