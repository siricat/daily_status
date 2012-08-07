class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all
    # flash[:error] = "This is an alert."
    # flash[:success] = "This is a success message."
    # flash[:info] = "This is an info message."  
    # flash[:notice] = "This is a notice message."            
  end
  
  def show
    @project = Project.find(params[:id])
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "#{@project.name} was successfully created."
      redirect_to @project
    else
      flash[:error] = "Project was not created."
      render :action => "new"
    end
  end
  
  def edit
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = "#{@project.name} was successfully updated."
      redirect_to @project
    else
      flash[:error] = "Project was not updated."
      render :action => "edit"
    end
  end
  
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "#{@project.name} has been deleted."
    redirect_to projects_path
  end
  
end
