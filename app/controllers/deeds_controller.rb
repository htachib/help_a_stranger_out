class DeedsController < ApplicationController

  def new
    render 'deeds/new'
  end

  def create
    deed = Deed.new(deed_params)

    if deed.save
      flash[:notice] = 'Your deed was published.'
      render '/profile'  # create a currrent user helper method?
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def index
    @deeds = Deed.all
  end

  private

  def deed_params
    params.permit(:title, :thumbnail, :description, :funding_amount)
  end

end
