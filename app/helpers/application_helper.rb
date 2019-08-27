module ApplicationHelper
  def user_signed_in?
    # binding.pry
    # ExecJS.eval "blockstackSession.isUserSignedIn()"
  end

  def deeds_thumbnail(category)
    'deeds/' + category + '.png'
  end
end
