class BewleyProjectsController < ApplicationController
  before_action :set_bewley_project, only: %i[ show edit update destroy ]

  # GET /bewley_projects or /bewley_projects.json
  def index
    @bewley_projects = BewleyProject.all
  end

  # GET /bewley_projects/1 or /bewley_projects/1.json
  def show
  end

  # GET /bewley_projects/new
  def new
    @bewley_project = BewleyProject.new
  end

  # GET /bewley_projects/1/edit
  def edit
  end

  # POST /bewley_projects or /bewley_projects.json
  def create
    @bewley_project = BewleyProject.new(bewley_project_params)

    respond_to do |format|
      if @bewley_project.save
        format.html { redirect_to bewley_project_url(@bewley_project), notice: "Bewley project was successfully created." }
        format.json { render :show, status: :created, location: @bewley_project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bewley_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bewley_projects/1 or /bewley_projects/1.json
  def update
    respond_to do |format|
      if @bewley_project.update(bewley_project_params)
        format.html { redirect_to bewley_project_url(@bewley_project), notice: "Bewley project was successfully updated." }
        format.json { render :show, status: :ok, location: @bewley_project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bewley_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bewley_projects/1 or /bewley_projects/1.json
  def destroy
    @bewley_project.destroy

    respond_to do |format|
      format.html { redirect_to bewley_projects_url, notice: "Bewley project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bewley_project
      @bewley_project = BewleyProject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bewley_project_params
      params.require(:bewley_project).permit(:title, :description)
    end
end
