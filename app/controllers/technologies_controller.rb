class TechnologiesController < ApplicationController

    def index
    end

    def show
    end

    def new
    end

    def create
      @technology = Technology.create(params[:technology])
      respond_to do |f|
        f.html { redirect_to root_path }
        f.json { render :json => @technology }
      end
    end

    def update
    end

    def delete
    end

end

