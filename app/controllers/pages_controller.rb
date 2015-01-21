class PagesController < ApplicationController

  def home
  	@events = Event.order("created_at DESC").limit(6)
  	@announcements = Announcement.order("created_at DESC").limit(1)
  end

  def tithing
  end
end
