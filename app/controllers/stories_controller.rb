class StoriesController < ApplicationController
  before_action :set_deed, only: [:index]

  def index
    @stories = @deed.try(:stories) || []
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.save

    redirect_to profile_path, notice: 'Thanks for sharing your story.'
  end

  private

  def set_deed
    @deed = Deed.find_by(id: params[:deed_id])
  end

  def story_params
    params.require(:story).permit(:body, :deed_id)
  end
end
