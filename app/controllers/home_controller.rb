class HomeController < ApplicationController
  def index
    @recent_posts = Post.recent
  end
end