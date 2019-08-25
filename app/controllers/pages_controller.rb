class PagesController < ApplicationController
  def home
  end

  def blockstack_callback
    puts 'in the callback'
    blockstack_info = request.env['omniauth.auth']
    session[:blockstack_user] = blockstack_info
    @user = blockstack_info
    redirect_to '/'
  end
end
