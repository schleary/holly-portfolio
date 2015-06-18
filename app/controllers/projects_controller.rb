class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def create
    @project = Project.new(find_params)
    if @project.save
      redirect_to projects_show_path(@project)
    else
      render 'new'
    end
  end

  def save
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(find_params)
      redirect_to projects_show_path(@project)
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
  end

  private

  def find_params
    params.require(:project).permit(:title, :url, :description)
  end

end
