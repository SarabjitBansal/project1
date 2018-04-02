class FoodtypesController < ApplicationController
  def index
      @foodtypes = Foodtype.all
    end

    def new
      @foodtype = Foodtype.new
    end
    def create
      foodtype = Foodtype.create foodtype_params
      redirect_to foodtype

    end
    def edit
      @foodtype = Foodtype.find params[:id]
    end
    def update
      foodtype = Foodtype.find params[:id]
      foodtype.update foodtype_params
      redirect_to foodtype
    end
    def show
      @foodtype = Foodtype.find params[:id]
    end
    def destroy
      foodtype = Foodtype.find params[:id]
      foodtype.destroy
      redirect_to foodtypes_path
    end
    #strong params - whitelist
    private
    def foodtype_params
      params.require(:foodtype).permit(:title, :recipe_id,:shortname)
    end
end
