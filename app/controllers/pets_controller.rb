class PetsController < ApplicationController
  before_action :authorize_edit, only: [:edit]

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
    @pet.name = params[:pet][:name]
    @pet.species = params[:pet][:species]
    @pet.breed = params[:pet][:breed]
    @pet.gender = params[:pet][:gender]
    @pet.age = params[:pet][:age]
    @pet.location = params[:pet][:location]
    @pet.image_url = params[:pet][:image_url]
    @pet.bio = params[:pet][:bio]
    @pet.save
    redirect_to "/"


  end

  def edit
    @pet = Pet.find(params[:id])
    if !@user == current_user
      redirect_to pets_path
    end
    
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.name = params[:pet][:name]
    @pet.species = params[:pet][:species]
    @pet.breed = params[:pet][:breed]
    @pet.gender = params[:pet][:gender]
    @pet.age = params[:pet][:age]
    @pet.location = params[:pet][:location]
    @pet.image_url = params[:pet][:image_url]
    @pet.bio = params[:pet][:bio]
    @pet.save
    redirect_to pets_path

  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to "/pets"
  end

  def authorize_edit
    @pet = Pet.find(params[:id])
    if @pet.user != current_user
      redirect_to "/pets"
    end
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :species, :breed, :gender, :age, :location, :image_url, :bio)
  end
  
end
