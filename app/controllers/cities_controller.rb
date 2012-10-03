class CitiesController < ApplicationController

    def index
    end

    def show
    end

    def new
    end

    def create
      @city = City.create(params[:city])
      respond_to do |f|
        f.html { redirect_to root_path }
        f.json { render :json => @city }
      end
    end

    def update
    end

    def delete
    end

end

