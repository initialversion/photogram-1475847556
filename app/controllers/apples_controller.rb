class ApplesController < ApplicationController
  def index
    @apples = Apple.all
  end

  def show
    @apple = Apple.find(params[:id])
  end

  def new
    @apple = Apple.new
  end

  def create
    @apple = Apple.new
    @apple.user_id = params[:user_id]

    if @apple.save
      redirect_to "/apples", :notice => "Apple created successfully."
    else
      render 'new'
    end
  end

  def edit
    @apple = Apple.find(params[:id])
  end

  def update
    @apple = Apple.find(params[:id])

    @apple.user_id = params[:user_id]

    if @apple.save
      redirect_to "/apples", :notice => "Apple updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @apple = Apple.find(params[:id])

    @apple.destroy

    redirect_to "/apples", :notice => "Apple deleted."
  end
end
