class OrganizationsController < ApplicationController
  
  def index
    @organizations = Organization.all
  end
  
  def show
    @organization = Organization.find(params[:id])
  end
  
  def new
    @organization = Organization.new
  end
  
  def create
    @organization = Organization.new(params[:organization])
    if @organization.save
      flash[:notice] => "#{@organization.name} was sucessfully created."
      redirect_to @organization
    else
      flash[:notice] => "Organization was not created."
      render :action => 'new'
    end
  end
  
  def edit
    @organization = Organization.find(params[:id])
  end
  
  def update
    @organization = Organization.find(params[:id])
    if @organization.update_attributes(params[:project])
      flash[:notice] => "#{@organization.name} was successfully updated."
      redirect_to @organization
    else
      flash[:notice] => "Organization was not updated."
      render :action => "edit"
    end
  end
  
  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    flash[:notice] => "#{@organization.name} was deleted."
    redirect_to organizations_path
  end
  
  
end
