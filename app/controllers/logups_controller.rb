class LogupsController < ApplicationController
  before_action :set_logup, only: [:show, :edit, :update, :destroy]

  # GET /logups
  # GET /logups.json
  def index
    @logups = Logup.all
  end

  # GET /logups/1
  # GET /logups/1.json
  def show
  end

  # GET /logups/new
  def new
    @logup = Logup.new
  end

  # GET /logups/1/edit
  def edit
  end

  # POST /logups
  # POST /logups.json
  def create
    @logup = Logup.new(logup_params)

    respond_to do |format|
      if @logup.save
        format.html { redirect_to @logup, notice: 'Logup was successfully created.' }
        format.json { render :show, status: :created, location: @logup }
      else
        format.html { render :new }
        format.json { render json: @logup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logups/1
  # PATCH/PUT /logups/1.json
  def update
    respond_to do |format|
      if @logup.update_attributes!(logup_params)
        format.html { redirect_to @logup, notice: 'Logup was successfully updated.' }
        format.json { render :show, status: :ok, location: @logup }
      else
        format.html { render :edit }
        format.json { render json: @logup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logups/1
  # DELETE /logups/1.json
  def destroy
    @logup.destroy
    respond_to do |format|
      format.html { redirect_to logups_url, notice: 'Logup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logup
      @logup = Logup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def logup_params
      params.require(:logup).permit(:fullname, :email)
    end
end
