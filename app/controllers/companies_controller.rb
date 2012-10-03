class CompaniesController < ApplicationController

    def index
    end

    def show
    end

    def new
    end

    def create
      @company = Company.create(params[:company])
      respond_to do |f|
        f.html { redirect_to root_path }
        f.json { render :json => @company }
      end
    end

    def update
    end

    def delete
    end

end

