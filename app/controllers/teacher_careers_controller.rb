class TeacherCareersController < ApplicationController
  before_action :set_teacher_career, only: [:show, :edit, :update, :destroy]

  # GET /teacher_careers
  # GET /teacher_careers.json
  def index
    @teacher_careers = TeacherCareer.all
  end

  # GET /teacher_careers/1
  # GET /teacher_careers/1.json
  def show
  end

  # GET /teacher_careers/new
  def new
    @teacher_career = TeacherCareer.new
  end

  # GET /teacher_careers/1/edit
  def edit
  end

  # POST /teacher_careers
  # POST /teacher_careers.json
  def create
    @teacher_career = TeacherCareer.new(teacher_career_params)

    respond_to do |format|
      if @teacher_career.save
        format.html { redirect_to @teacher_career, notice: 'Teacher career was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_career }
      else
        format.html { render :new }
        format.json { render json: @teacher_career.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_careers/1
  # PATCH/PUT /teacher_careers/1.json
  def update
    respond_to do |format|
      if @teacher_career.update(teacher_career_params)
        format.html { redirect_to @teacher_career, notice: 'Teacher career was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_career }
      else
        format.html { render :edit }
        format.json { render json: @teacher_career.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_careers/1
  # DELETE /teacher_careers/1.json
  def destroy
    @teacher_career.destroy
    respond_to do |format|
      format.html { redirect_to teacher_careers_url, notice: 'Teacher career was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_career
      @teacher_career = TeacherCareer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_career_params
      params.require(:teacher_career).permit(:teacher, :career_id)
    end
end
