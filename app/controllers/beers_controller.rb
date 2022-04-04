class BeersController < ApplicationController
    before_action :set_beer, only: [:update, :destroy]

    def index
        beers = Beer.all
        render json: beers
    end

    def show
        beer = Beer.find(params[:id])
        render json: beer, serializer: BeerSerializer
    end

    def create
        beer = logged_in_user.beers.build(beer_params)
        if beer.save
            render json: beer, status: :created, location: beer
        else
            render json: beer.errors, status: :unprocessable_entity
        end
    end

    def update
        if beer.update(beer_params)
            render json: beer
        else
            render json: beer.errors, status: unprocessable_entity
        end
    end

    def destroy
        beer.destroy
    end

    private

    def set_beer
        post = Beer.find(params[:id])
    end

    def beer_params
        params.permit(:name, :description, :alcohol_lvl, :country, :yr_made)
    end
end
