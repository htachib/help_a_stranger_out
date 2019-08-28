class PagesController < ApplicationController
  def home
  end

  def profile
  end

  def deed_fund
  end

  def inspire_me
    quote = Quotes::Base::QUOTES.sample
    @text = quote[:body]
    @author = quote[:author]
    image_id = (1..20).to_a.sample
    @image_path = "/quotes/#{image_id}.png"
  end

  def why
  end
end
