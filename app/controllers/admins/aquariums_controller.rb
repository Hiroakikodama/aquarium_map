class Admins::AquariumsController < Admins::ApplicationController
  before_action :set_admins_aquarium, only: [:show, :edit, :update, :destroy]

  # GET /admins/aquaria
  # GET /admins/aquaria.json
  def index
    @admins_aquaria = Aquarium.all
  end

  # GET /admins/aquaria/1
  # GET /admins/aquaria/1.json
  def show
  end

  # GET /admins/aquaria/new
  def new
    @admins_aquarium = Admins::Aquarium.new
  end

  # GET /admins/aquaria/1/edit
  def edit
  end

  # POST /admins/aquaria
  # POST /admins/aquaria.json
  def create
    @admins_aquarium = Aquarium.new(admins_aquarium_params)

    respond_to do |format|
      if @admins_aquarium.save
        format.html { redirect_to [:admins, @admins_aquarium], notice: 'Aquarium was successfully created.' }
        format.json { render :show, status: :created, location: @admins_aquarium }
      else
        format.html { render :new }
        format.json { render json: @admins_aquarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/aquaria/1
  # PATCH/PUT /admins/aquaria/1.json
  def update
    respond_to do |format|
      if @admins_aquarium.update(admins_aquarium_params)
        format.html { redirect_to @admins_aquarium, notice: 'Aquarium was successfully updated.' }
        format.json { render :show, status: :ok, location: @admins_aquarium }
      else
        format.html { render :edit }
        format.json { render json: @admins_aquarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/aquaria/1
  # DELETE /admins/aquaria/1.json
  def destroy
    @admins_aquarium.destroy
    respond_to do |format|
      format.html { redirect_to admins_aquaria_url, notice: 'Aquarium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admins_aquarium
      @admins_aquarium = Admins::Aquarium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admins_aquarium_params
      params.fetch(:admins_aquarium, {})
    end
end
