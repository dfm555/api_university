class CareerSubjectsController < ApplicationController
  before_action :set_career_subject, only: [:show, :edit, :update, :destroy]

  # GET /career_subjects
  # GET /career_subjects.json
  def index
    @career_subjects = CareerSubject.all
  end

  # GET /career_subjects/1
  # GET /career_subjects/1.json
  def show
  end

  # GET /career_subjects/new
  def new
    @career_subject = CareerSubject.new
  end

  # GET /career_subjects/1/edit
  def edit
  end

  # POST /career_subjects
  # POST /career_subjects.json
  def create
    @career_subject = CareerSubject.new(career_subject_params)

    respond_to do |format|
      if @career_subject.save
        format.html { redirect_to @career_subject, notice: 'Career subject was successfully created.' }
        format.json { render :show, status: :created, location: @career_subject }
      else
        format.html { render :new }
        format.json { render json: @career_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /career_subjects/1
  # PATCH/PUT /career_subjects/1.json
  def update
    respond_to do |format|
      if @career_subject.update(career_subject_params)
        format.html { redirect_to @career_subject, notice: 'Career subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @career_subject }
      else
        format.html { render :edit }
        format.json { render json: @career_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /career_subjects/1
  # DELETE /career_subjects/1.json
  def destroy
    @career_subject.destroy
    respond_to do |format|
      format.html { redirect_to career_subjects_url, notice: 'Career subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_career_subject
      @career_subject = CareerSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def career_subject_params
      params.fetch(:career_subject, {})
    end
end
