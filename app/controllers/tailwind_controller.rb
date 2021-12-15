class TailwindController < ApplicationController
  def blog_post
    @post = Post.generate
  end

  def sign_in
    @show_error = params[:show_error]
  end
end
