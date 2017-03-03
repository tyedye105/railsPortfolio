class UsersController < ApplicationController
  def index
  end

  def show
    @projects = Project.get_best
    @best_projects = []
  end
end
