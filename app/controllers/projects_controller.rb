class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all
    # flash[:error] = "This is an alert."
    # flash[:success] = "This is a success message."
    # flash[:info] = "This is an info message."  
    # flash[:notice] = "This is a notice message."            
  end
  
  def show
  end
  
  def new
    @project = Project.new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
end
