class PetsController < ApplicationController
  def index
    @pets = Pet.all
    
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = current_user.pets.new
  end

  def create
 
    @pet = current_user.pets.new
    @pet.species = params[:pet][:species]
    @pet.breed = params[:pet][:breed]
    @pet.gender = params[:pet][:gender]
    @pet.age = params[:pet][:age]
    @pet.location = params[:pet][:location]
    @pet.image_url = params[:pet][:image_url]
    @pet.save
    redirect_to "/"


  end

  def edit
  end

  def update
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to "/pets"
  end

  
end
