class DeedsController < ApplicationController
  include StatCounter

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
    @stat_1 = total_deeds_completed
    @stat_2 = total_deeds_in_progress
    @stat_3 = total_smiles_given
    @stat_4 = total_deeds_for_funding
  end

  def update
    @deed = Deed.find_by(id: params[:id])
    @deed.complete! if @deed

    render json: { status: 200 }
  end

  private

  def deed_params
    params.permit(:title, :thumbnail, :description, :funding_amount)
  end
end
