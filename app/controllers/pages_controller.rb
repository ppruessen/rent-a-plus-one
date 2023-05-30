class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @events = Event.all.sample(4)
  end
end
