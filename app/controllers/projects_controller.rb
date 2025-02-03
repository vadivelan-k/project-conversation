class ProjectsController < ApplicationController
  before_action :authenticate_user!

  before_action :check_project_availability, only: [:show]
  def index
    @projects = Project.all
  end

  def show
  end

  private

  def check_project_availability
    @project = Project.find_by(id: params[:id])

    return redirect_to projects_path if @project.nil?
  end
end
