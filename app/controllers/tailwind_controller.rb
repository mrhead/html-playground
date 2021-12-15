class TailwindController < ApplicationController
  def sign_in
    @show_error = params[:show_error]
  end
end
