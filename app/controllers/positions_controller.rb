class PositionsController < ApplicationController
    def index
        @positions = Position.all
    end

    def new
        @position = Position.new
    end

    def create
        @position = Position.new(article_params)
        if @position.save
            redirect_to @position
        end
    end

    def show
        @position = Position.find(params[:id])
    end

    def article_params
        params.require(:position).permit(:title)
    end

end
