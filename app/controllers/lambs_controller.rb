class LambsController < ApplicationController

  def index
    @lambs = Lamb.all
  end

  def create
    @lamb = Lamb.new(params[:lamb])
    # if @lamb.save
    #   redirect_to @lamb
    # else
    #   render :index
    # end
    respond_to do |format|
      if @lamb.save
        format.html { redirect_to @lamb }
        format.json { render json: @lamb, status: :created, location: @lamb }
      else
        format.html { redirect_to root_path }
        format.json { render json: @lamb.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @lamb = Lamb.find(params[:id])
  end

  def update
    @lamb = Lamb.find(params[:id])
    if @lamb.save
      redirect_to @lamb
    else
      render :index
    end
  end

end
