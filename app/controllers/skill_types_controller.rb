class SkillTypesController < ApplicationController
  before_action :set_skill_type, only: [:show, :edit, :update, :destroy]

  # GET /skill_types
  # GET /skill_types.json
  def index
    @skill_types = SkillType.all
  end

  # GET /skill_types/1
  # GET /skill_types/1.json
  def show
  end

  # GET /skill_types/new
  def new
    @skill_type = SkillType.new
  end

  # GET /skill_types/1/edit
  def edit
  end

  # POST /skill_types
  # POST /skill_types.json
  def create
    @skill_type = SkillType.new(skill_type_params)

    respond_to do |format|
      if @skill_type.save
        format.html { redirect_to @skill_type, notice: 'Skill type was successfully created.' }
        format.json { render :show, status: :created, location: @skill_type }
      else
        format.html { render :new }
        format.json { render json: @skill_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_types/1
  # PATCH/PUT /skill_types/1.json
  def update
    respond_to do |format|
      if @skill_type.update(skill_type_params)
        format.html { redirect_to @skill_type, notice: 'Skill type was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill_type }
      else
        format.html { render :edit }
        format.json { render json: @skill_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_types/1
  # DELETE /skill_types/1.json
  def destroy
    @skill_type.destroy
    respond_to do |format|
      format.html { redirect_to skill_types_url, notice: 'Skill type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_type
      @skill_type = SkillType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_type_params
      params.require(:skill_type).permit(:name, :klass_id, :skills_id)
    end
end
