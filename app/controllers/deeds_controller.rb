class DeedsController < ApplicationController

  def new
    @deed = Deed.new
  end

  def create
    @deed = Deed.new(deed_params)
    @deed.save

    render json: @deed
  end

  def index
    @deeds = Deed.all
  end

  private

  def deed_params
    params.permit(:title, :thumbnail, :description, :funding_amount)
  end
end
