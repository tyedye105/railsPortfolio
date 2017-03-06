class ProjectsController < ApplicationController
  def index
      @projects = Project.get_all
  end
end
