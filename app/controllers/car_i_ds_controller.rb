class CarIDsController < ApplicationController
  before_action :set_car_id, only: [:show, :edit, :update, :destroy]

  # GET /car_ids
  # GET /car_ids.json
  def index
    @car_ids = CarId.all
  end

  # GET /car_ids/1
  # GET /car_ids/1.json
  def show
  end

  # GET /car_ids/new
  def new
    @car_id = CarId.new
  end

  # GET /car_ids/1/edit
  def edit
  end

  # POST /car_ids
  # POST /car_ids.json
  def create
    @car_id = CarId.new(car_id_params)

    respond_to do |format|
      if @car_id.save
        format.html { redirect_to @car_id, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car_id }
      else
        format.html { render :new }
        format.json { render json: @car_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_ids/1
  # PATCH/PUT /car_ids/1.json
  def update
    respond_to do |format|
      if @car_id.update(car_id_params)
        format.html { redirect_to @car_id, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_id }
      else
        format.html { render :edit }
        format.json { render json: @car_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_ids/1
  # DELETE /car_ids/1.json
  def destroy
    @car_id.destroy
    respond_to do |format|
      format.html { redirect_to car_ids_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_id
      @car_id = CarId.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_id_params
      params.require(:car_id).permit(:Year, :Make, :Model, :LicencePlate, :Color)
    end
end
