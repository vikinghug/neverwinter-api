class ParagonsController < ApplicationController
  before_action :set_paragon, only: [:show, :edit, :update, :destroy]

  # GET /paragons
  # GET /paragons.json
  def index
    @paragons = Paragon.all
  end

  # GET /paragons/1
  # GET /paragons/1.json
  def show
  end

  # GET /paragons/new
  def new
    @paragon = Paragon.new
  end

  # GET /paragons/1/edit
  def edit
  end

  # POST /paragons
  # POST /paragons.json
  def create
    @paragon = Paragon.new(paragon_params)

    respond_to do |format|
      if @paragon.save
        format.html { redirect_to @paragon, notice: 'Paragon was successfully created.' }
        format.json { render :show, status: :created, location: @paragon }
      else
        format.html { render :new }
        format.json { render json: @paragon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paragons/1
  # PATCH/PUT /paragons/1.json
  def update
    respond_to do |format|
      if @paragon.update(paragon_params)
        format.html { redirect_to @paragon, notice: 'Paragon was successfully updated.' }
        format.json { render :show, status: :ok, location: @paragon }
      else
        format.html { render :edit }
        format.json { render json: @paragon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paragons/1
  # DELETE /paragons/1.json
  def destroy
    @paragon.destroy
    respond_to do |format|
      format.html { redirect_to paragons_url, notice: 'Paragon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paragon
      @paragon = Paragon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paragon_params
      params.require(:paragon).permit(:name, :klass_id, :skills)
    end
end
