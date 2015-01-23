class WelcomeController < ApplicationController
  layout "welcome"
  def index
    @guestbook = Guestbook.new
  end
end
