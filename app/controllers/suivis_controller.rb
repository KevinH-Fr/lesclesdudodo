class SuivisController < ApplicationController
  before_action :set_suivi, only: %i[ show edit update destroy ]

  # GET /suivis or /suivis.json
  def index
    @suivis = Suivi.all
  end

  # GET /suivis/1 or /suivis/1.json
  def show
  end

  # GET /suivis/new
  def new
    @suivi = Suivi.new
  end

  # GET /suivis/1/edit
  def edit
  end

  # POST /suivis or /suivis.json
  def create
    @suivi = Suivi.new(suivi_params)

    respond_to do |format|
      if @suivi.save
        format.html { redirect_to root_path, notice: "Suivi was successfully created." }
        format.json { render :show, status: :created, location: @suivi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @suivi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suivis/1 or /suivis/1.json
  def update
    respond_to do |format|
      if @suivi.update(suivi_params)
        format.html { redirect_to suivi_url(@suivi), notice: "Suivi was successfully updated." }
        format.json { render :show, status: :ok, location: @suivi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @suivi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suivis/1 or /suivis/1.json
  def destroy
    @suivi.destroy!

    respond_to do |format|
      format.html { redirect_to suivis_url, notice: "Suivi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suivi
      @suivi = Suivi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def suivi_params
      params.require(:suivi).permit(:enfant_id, :jour_suivi, :temps_endormissement, :heure_endormissement)
    end
end
