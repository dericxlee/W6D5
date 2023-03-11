class CatsController < ApplicationController
    def index
        @cats = Cat.all
        render :index
    end

    def create
        Cat.new(cat_params)
    end

    def show
        @cat = Cat.find_by(id: params[:id])
        render :show
    end

    def update
        cat = Cat.find_by(id: params[:id])
        cat.update!(cat_params)
        render json: cat
    end

    private
    def cat_params
        params.require(:cat).permit(:birth_date, :name, :color, :sex, :description)
    end
end
