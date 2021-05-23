class CovidCentersController < ApplicationController
  before_action :set_covid_center, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except:[:index,:show]

  # GET /covid_centers or /covid_centers.json
  def index
    @covid_centers = CovidCenter.search(params[:search]).order(district: :asc,center: :asc)
  end

  # GET /covid_centers/1 or /covid_centers/1.json
  def show
  end

  # GET /covid_centers/new
  def new
    @covid_center = CovidCenter.new
  end

  # GET /covid_centers/1/edit
  def edit
  end

  # POST /covid_centers or /covid_centers.json
  def create
    @covid_center = CovidCenter.new(covid_center_params)
    @covid_center.user = current_user
    respond_to do |format|
      if @covid_center.save
        format.html { redirect_to @covid_center, notice: "Covid center was successfully created." }
        format.json { render :show, status: :created, location: @covid_center }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @covid_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /covid_centers/1 or /covid_centers/1.json
  def update
    respond_to do |format|
      if @covid_center.update(covid_center_params)
        format.html { redirect_to @covid_center, notice: "Covid center was successfully updated." }
        format.json { render :show, status: :ok, location: @covid_center }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @covid_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /covid_centers/1 or /covid_centers/1.json
  def destroy
    @covid_center.destroy
    respond_to do |format|
      format.html { redirect_to covid_centers_url, notice: "Covid center was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_covid_center
      @covid_center = CovidCenter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def covid_center_params
      params.require(:covid_center).permit(:district, :hospital, :center, :helpline, :maplink)
    end
end
