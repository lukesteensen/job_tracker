class JobsController < ApplicationController

    def index
      @jobs = Job.all
    end

    def show
      @job = Job.find(params[:id])
    end

    def new
      @job = Job.new
    end

    def create
      @job = Job.create(params[:job])
      respond_to do |f|
        f.html { redirect_to @job }
        f.json { render :json => @job }
      end
    end

    def edit
      @job = Job.find(params[:id])
    end

    def update
      @job = Job.find(params[:id])
      respond_to do |format|
        if @job.update_attributes(params[:job])
          format.html  { redirect_to @job }
          format.json  { head :no_content }
        else
          format.html  { render :action => "edit" }
          format.json  { render :json => @job.errors,
                         :status => :unprocessable_entity }
        end
      end
    end

    def delete
    end

end

