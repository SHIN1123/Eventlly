class Posts::SearchesController < ApplicationController
  def index
    @posts = Post.search(params[:keyword]).order("created_at DESC")
    @results = Post.where('prefecture_id IN(?)', params[:prefecture_id])
  end
end
