class OneclicksController < ApplicationController
  before_action :set_oneclick, only: %i[ show edit update destroy ]

  # GET /oneclicks or /oneclicks.json
  def index
    @oneclicks = Oneclick.all
  end

  # GET /oneclicks/1 or /oneclicks/1.json
  def show
  end

  # GET /oneclicks/new
  def new
    @oneclick = Oneclick.new
  end

  # GET /oneclicks/1/edit
  def edit
  end

  # POST /oneclicks or /oneclicks.json
  def create
    @oneclick = Oneclick.new(oneclick_params)

    respond_to do |format|
      if @oneclick.save
        format.html { redirect_to @oneclick, notice: "Oneclick was successfully created." }
        format.json { render :show, status: :created, location: @oneclick }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @oneclick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oneclicks/1 or /oneclicks/1.json
  def update
    respond_to do |format|
      if @oneclick.update(oneclick_params)
        format.html { redirect_to @oneclick, notice: "Oneclick was successfully updated." }
        format.json { render :show, status: :ok, location: @oneclick }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @oneclick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oneclicks/1 or /oneclicks/1.json
  def destroy
    @oneclick.destroy
    respond_to do |format|
      format.html { redirect_to oneclicks_url, notice: "Oneclick was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oneclick
      @oneclick = Oneclick.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oneclick_params
      params.fetch(:oneclick, {})
    end
end
