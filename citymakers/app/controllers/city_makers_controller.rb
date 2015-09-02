class CityMakersController < ApplicationController
  before_action :set_city_maker, only: [:show, :edit, :update, :destroy]

  # GET /city_makers
  # GET /city_makers.json
  def index
    @city_makers = CityMaker.all
    @title = "CiyMakers (#{@city_makers.size})"
  end

  def search
    @city_makers = CityMaker.search(params[:q])
    @title = "Search - \"#{params[:q]}\" (#{@city_makers.size})"
    render :index
  end

  # GET /city_makers/1
  # GET /city_makers/1.json
  def show
    @title = @city_maker.name
    @review = Review.new
    @review.city_maker_id = @city_maker.id
    @review.user_id = current_user.id if user_signed_in?
  end

  # GET /city_makers/new
  def new
    @city_maker = CityMaker.new
  end

  # GET /city_makers/1/edit
  def edit
  end

  # POST /city_makers
  # POST /city_makers.json
  def create
    @city_maker = CityMaker.new(city_maker_params)

    respond_to do |format|
      if @city_maker.save
        format.html { redirect_to @city_maker, notice: 'City maker was successfully created.' }
        format.json { render :show, status: :created, location: @city_maker }
      else
        format.html { render :new }
        format.json { render json: @city_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /city_makers/1
  # PATCH/PUT /city_makers/1.json
  def update
    respond_to do |format|
      if @city_maker.update(city_maker_params)
        format.html { redirect_to @city_maker, notice: 'City maker was successfully updated.' }
        format.json { render :show, status: :ok, location: @city_maker }
      else
        format.html { render :edit }
        format.json { render json: @city_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_makers/1
  # DELETE /city_makers/1.json
  def destroy
    @city_maker.destroy
    respond_to do |format|
      format.html { redirect_to city_makers_url, notice: 'City maker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_maker
      @city_maker = CityMaker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_maker_params
      params.require(:city_maker).permit(:location_name, :name, :description, :lat, :lng, :address1, :address2, :city, :state, :country, :phone, :timings, :note, :avatar, :category_id)
    end
end
