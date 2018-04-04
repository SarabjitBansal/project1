class RecipesController < ApplicationController


  def index

    if params[:search]
      @recipes = Recipe.search(params[:search]).order(:created_at)
    else
      @recipes = Recipe.all.order(:created_at)
    end

    # @recipes = Recipe.all.order(:created_at)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create recipe_params
    recipe.user_id = @current_user.id

    recipe.foodtype_ids = params[:recipe][:foodtype_ids]
    recipe.save
    # Cloudinary::Uploader.upload(recipe.image,:public_id => recipe.id)
    # Cloudinary::Uploader.upload(recipe.image,:public_id => recipe.id)
    Cloudinary::Uploader.upload(params[:recipe][:image],:public_id => recipe.id)

    # cloudinary = Cloudinary::Uploader.upload(params[:recipe][:image])
    # recipe.image = cloudinary["url"]
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
    # cloudinary = Cloudinary::Uploader.upload(params[:recipe][:image])
    # Cloudinary::Uploader.upload(recipe.image,:public_id => recipe.id)
    Cloudinary::Uploader.upload(params[:recipe][:image],:public_id => recipe.id)
    # recipe.image = cloudinary["url"]


    # recipename = recipe.name.delete(' ')
    # Cloudinary::Uploader.text(recipe.name,:public_id => recipename,:font_family => "Arial", :font_size => 18,:font_color => 'black', :opacity => 90)


    redirect_to recipe

  end

  def show
    @recipe = Recipe.find params[:id]
    @favorited = FavoriteRecipe.find_by(user: @current_user, recipe: @recipe).present?
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

  def favoriterecipe
    @recipes =  @current_user.favorite_recipes.map(&:recipe) # Study this
    render :index
  end

  def favorite
    @recipe = Recipe.find(params[:id])
    type = params[:type]
    if type == "favorite"
      @current_user.favorite_recipes.create :recipe => @recipe
      redirect_to @recipe
    elsif type == "unfavorite"
      @current_user.favorite_recipes.find_by(:recipe => @recipe).destroy
        redirect_to @recipe
    end
  end




  private
  def recipe_params
    params.require(:recipe).permit(:name, :food_desc, :image, :prep_time,:cook_time, :no_of_serves, :spice_level, :recipe_type, :foodtype_id, :ingredients, :procedure, :country, :city )
  end

end
