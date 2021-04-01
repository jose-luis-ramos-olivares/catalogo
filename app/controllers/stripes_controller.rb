class StripesController < ApplicationController
  before_action :set_stripe, only: %i[ show edit update destroy ]

  # GET /stripes or /stripes.json
  def index
    @stripes = Stripe.all
  end

  # GET /stripes/1 or /stripes/1.json
  def show
  end

  # GET /stripes/new
  def new
    @stripe = Stripe.new
  end

  # GET /stripes/1/edit
  def edit
  end

  # POST /stripes or /stripes.json
  def create
    @stripe = Stripe.new(stripe_params)

    respond_to do |format|
      if @stripe.save
        format.html { redirect_to @stripe, notice: "Stripe was successfully created." }
        format.json { render :show, status: :created, location: @stripe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stripe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stripes/1 or /stripes/1.json
  def update
    respond_to do |format|
      if @stripe.update(stripe_params)
        format.html { redirect_to @stripe, notice: "Stripe was successfully updated." }
        format.json { render :show, status: :ok, location: @stripe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stripe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stripes/1 or /stripes/1.json
  def destroy
    @stripe.destroy
    respond_to do |format|
      format.html { redirect_to stripes_url, notice: "Stripe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stripe
      @stripe = Stripe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stripe_params
      params.fetch(:stripe, {})
    end
end
