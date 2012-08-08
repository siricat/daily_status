class UsersController < ApplicationController
  
  def dashboard
    @organizations = Organization.all
    @projects = Project.all
    @posts = Post.all
  end

  
end
