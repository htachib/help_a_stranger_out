class SmilesController < ApplicationController
  def create
    @smile = Smile.new(smile_params)
    @smile.save
  end

  private

  def smile_params
    params.permit(:deed_id)
  end
end
