class PagesController < ApplicationController
  def index
    @pages = get_pages
  end

  private

  def get_pages
    HighVoltage.page_ids.reject { |id| id == "index" }
  end
end
