class PhysicalsController < ApplicationController
  before_action :set_physical, only: %i[ show edit update destroy ]

  # GET /physicals or /physicals.json
  def index
    @physicals = Physical.all
  end

  # GET /physicals/1 or /physicals/1.json
  def show
  end

  # GET /physicals/new
  def new
    @physical = Physical.new
  end

  # GET /physicals/1/edit
  def edit
  end

  # POST /physicals or /physicals.json
  def create
    @physical = Physical.new(physical_params)

    respond_to do |format|
      if @physical.save
        format.html { redirect_to @physical, notice: "Physical was successfully created." }
        format.json { render :show, status: :created, location: @physical }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @physical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physicals/1 or /physicals/1.json
  def update
    respond_to do |format|
      if @physical.update(physical_params)
        format.html { redirect_to @physical, notice: "Physical was successfully updated." }
        format.json { render :show, status: :ok, location: @physical }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @physical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physicals/1 or /physicals/1.json
  def destroy
    @physical.destroy
    respond_to do |format|
      format.html { redirect_to physicals_url, notice: "Physical was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physical
      @physical = Physical.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def physical_params
      params.require(:physical).permit(:product_id)
    end
end
