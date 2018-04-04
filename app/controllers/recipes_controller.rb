class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all.order(:created_at)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create recipe_params
    recipe.user_id = @current_user.id

    recipe.foodtype_ids = params[:recipe][:foodtype_ids]
    recipe.save
    Cloudinary::Uploader.upload(recipe.image,:public_id => recipe.id)
    redirect_to recipe
    # recipename = recipe.name.delete(' ')
    # Cloudinary::Uploader.text(recipe.name,:public_id => recipename,:font_family => "Arial", :font_size => 18,:font_color => 'black', :opacity => 90)



  end

  def edit
    @recipe = Recipe.find params[:id]
  end

  def update
    recipe = Recipe.find params[:id]
    recipe.update recipe_params
    recipe.user_id = @current_user.id
    # raise:hell

    recipe.foodtypes.destroy
    recipe.foodtype_ids = params[:recipe][:foodtype_ids]
    recipe.save

    # recipename = recipe.name.delete(' ')
    # Cloudinary::Uploader.text(recipe.name,:public_id => recipename,:font_family => "Arial", :font_size => 18,:font_color => 'black', :opacity => 90)
    Cloudinary::Uploader.upload(recipe.image,:public_id => recipe.id)

    redirect_to recipe
  end

  def show
    @recipe = Recipe.find params[:id]
  end
  def destroy
    recipe = Recipe.find params[:id]
    recipe.destroy
    redirect_to recipes_path
  end

  def types_index
    @foodtypes = Foodtype.all
  end

  def by_type
    foodtype = Foodtype.find_by :shortname => params[:type]
    @recipes = foodtype.recipes
    render :index
  end

  def favorite
    @recipe = Recipe.find(params[:id])
    type = params[:type]
    if type == "favorite"
      @current_user.favorites << @recipe
      redirect_to :back, notice: 'Added to favorites'

    elsif type == "unfavorite"
      @current_user.favorites.delete(@recipe)
      redirect_to :back, notice: 'Removed from favorites'

    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'Nothing happened.'
    end
  end



  private
  def recipe_params
    params.require(:recipe).permit(:name, :food_desc, :image, :prep_time,:cook_time, :no_of_serves, :spice_level, :recipe_type, :foodtype_id, :ingredients, :procedure, :country, :city )
  end

end
