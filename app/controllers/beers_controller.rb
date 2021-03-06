class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :edit, :update, :destroy]

  # GET /beers
  def index
    @beers = Beer.all
  end

  # GET /beers/1
  def show
  end

  # GET /beers/new
  def new
    @beer = Beer.new
  end

  # GET /beers/1/edit
  def edit
  end

  # POST /beers
  def create
    @beer = Beer.new(beer_params)


      if @beer.save
        redirect_to @beer, notice: 'Beer was successfully created.'
      else
        render :new
    end
  end

  # PATCH/PUT /beers/1
  def update

      if @beer.update(beer_params)
        redirect_to @beer, notice: 'Beer was successfully updated.'
      else
        ender :edit
    end
  end

  # DELETE /beers/1
  def destroy
    @beer.destroy
    redirect_to beers_url, notice: 'Beer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer
      @beer = Beer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_params
      params.require(:beer).permit(:name, :abv, :style, :price)
    end
end
