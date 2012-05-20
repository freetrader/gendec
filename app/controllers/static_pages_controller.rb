class StaticPagesController < ApplicationController
  def home
    @page_title = "Dashboard"
  end

  def help
    @page_title = "Help"
  end
end
