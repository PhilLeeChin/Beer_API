class StylesController < ApplicationController
    def create
        style = logged_in_user.beers.create!(style_params)
        render json: style 
    end

    private

    def style_params
        params.permit(:served, :appetizers, :user_id, :beer_id)
    end
end