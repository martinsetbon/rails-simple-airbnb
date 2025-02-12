class FlatsController < ApplicationController
   # '/flats/top'
  #  def top
  #   @flats = Flat.where(rating: 5)
  # end

  # # '/flats/12/chef'
  # def chef
  #   @flat = Flat.find(params[:id])
  # end

  # '/flats'
  def index
    @flats = Flat.all
  end

  # '/flats/1'
  def show
    # Rails pulls the id from the URL and puts in the params
    @flat = Flat.find(params[:id])
  end

  # '/flats/new'
  def new
    # this is for the form builder (with will build the path + method)
    @flat = Flat.new
  end

  # we can only trigger this action, by submitting a form
  # it's only purpose is to create, so it doesnt have a view
  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      # redirect_to flats_path
      redirect_to flat_path(@flat)
    else
      # if the flat doesnt save, we want to show the form again
      # render the form page again aka new.html.erb
      render :new, status: :unprocessable_entity # 422
    end
  end

  # '/flats/20/edit'
  def edit
    # this is just for the form
    @flat = Flat.find(params[:id])
  end

  # we can only trigger this action, by submitting a form
  # it's only purpose is to update, so it doesnt have a view
  def update
    # load the flat using the id from the URL (not the form)
    @flat = Flat.find(params[:id])
    # update the instance using the data from the form
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      # if the flat doesnt save, we want to show the form again
      # render the form page again aka new.html.erb
      render :edit, status: :unprocessable_entity # 422
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def flat_params
    # for security reasons, we are whitelisting our params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
