class TailwindController < ApplicationController
  def blog_post
    @post = Post.generate
  end

  def modal
  end

  def sign_in
  end
end
