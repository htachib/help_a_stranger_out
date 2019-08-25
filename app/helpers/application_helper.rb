module ApplicationHelper
  def active_tab(matcher)
    request.env['REQUEST_PATH'] == matcher ? 'is-active' : ''
  end

  def user_signed_in?
    # binding.pry
    # ExecJS.eval "blockstackSession.isUserSignedIn()"
  end
end
