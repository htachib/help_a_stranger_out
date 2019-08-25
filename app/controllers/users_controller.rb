class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def new
  end

  def create
  end

  def show
    render 'users/show'
  end

  def edit
  end

  def update
  end

  private

  def set_user
  end

end
