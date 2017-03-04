class UsersController < ApplicationController
  def index
  end

  def show
    @projects = Project.get_all
  end
end
