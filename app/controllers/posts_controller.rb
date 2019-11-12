class PostsController < ApplicationController
  before :logged_in_user, only: [:new, :create]

  def index; end

  def new; end

  def create; end

  private

  # before methods
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in"
      redirect_to login_url
    end
  end
end
