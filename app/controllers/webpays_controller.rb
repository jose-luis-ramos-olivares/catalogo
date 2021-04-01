class WebpaysController < ApplicationController
  before_action :set_webpay, only: %i[ show edit update destroy ]

  # GET /webpays or /webpays.json
  def index
    @webpays = Webpay.all
  end

  # GET /webpays/1 or /webpays/1.json
  def show
  end

  # GET /webpays/new
  def new
    @webpay = Webpay.new
  end

  # GET /webpays/1/edit
  def edit
  end

  # POST /webpays or /webpays.json
  def create
    @webpay = Webpay.new(webpay_params)

    respond_to do |format|
      if @webpay.save
        format.html { redirect_to @webpay, notice: "Webpay was successfully created." }
        format.json { render :show, status: :created, location: @webpay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @webpay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webpays/1 or /webpays/1.json
  def update
    respond_to do |format|
      if @webpay.update(webpay_params)
        format.html { redirect_to @webpay, notice: "Webpay was successfully updated." }
        format.json { render :show, status: :ok, location: @webpay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @webpay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webpays/1 or /webpays/1.json
  def destroy
    @webpay.destroy
    respond_to do |format|
      format.html { redirect_to webpays_url, notice: "Webpay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webpay
      @webpay = Webpay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def webpay_params
      params.fetch(:webpay, {})
    end
end
