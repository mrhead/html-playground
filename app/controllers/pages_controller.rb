class PagesController < ApplicationController
  def index
    @pages = get_pages
  end

  private

  def get_pages
    TailwindController.action_methods.sort.map do |action|
      {
        name: action.humanize,
        path: url_for(controller: :tailwind, action: action, only_path: true)
      }
    end
  end
end
