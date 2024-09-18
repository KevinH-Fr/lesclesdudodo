class EnfantsController < ApplicationController
  before_action :set_enfant, only: %i[ show edit update destroy ]

  include UsersHelper

  # GET /enfants or /enfants.json
  def index
    @enfants = Enfant.all
  end

  # GET /enfants/1 or /enfants/1.json
  def show
  end

  # GET /enfants/new
  def new
    @user = User.find(current_user_id) if current_user_id

    @enfant = Enfant.new
  end

  # GET /enfants/1/edit
  def edit
  end

  # POST /enfants or /enfants.json
  def create
    @enfant = Enfant.new(enfant_params)

    respond_to do |format|
      if @enfant.save
        format.html { redirect_to root_path, notice: "Enfant was successfully created." }
        format.json { render :show, status: :created, location: @enfant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @enfant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enfants/1 or /enfants/1.json
  def update
    respond_to do |format|
      if @enfant.update(enfant_params)
        format.html { redirect_to enfant_url(@enfant), notice: "Enfant was successfully updated." }
        format.json { render :show, status: :ok, location: @enfant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @enfant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enfants/1 or /enfants/1.json
  def destroy
    @enfant.destroy!

    respond_to do |format|
      format.html { redirect_to enfants_url, notice: "Enfant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enfant
      @enfant = Enfant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enfant_params
      params.require(:enfant).permit(:user_id, :prenom, :birth)
    end
end
