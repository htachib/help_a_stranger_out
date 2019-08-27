class StatsController < ApplicationController
  def create
    @stat = Stat.new(stat_params)
    @stat.save
  end

  private

  def stat_params
    params.permit(:stat_type, :direction, :deed_id)
  end

  # def smiles_given
  #   Smile.all.count
  # end
  #
  # def deeds_for_funding
  #   Deed.where("funding_amount > ?", 0)
  # end
end
