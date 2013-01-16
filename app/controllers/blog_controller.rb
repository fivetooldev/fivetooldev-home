class BlogController < ApplicationController

  layout 'blog'

  def index
    @blog_entries = BlogEntry.order('published_at DESC').published

    respond_to do |format|
      format.html { render :index }
      format.rss { render layout: false }
    end
  end

  def show
    @blog_entry = BlogEntry.published.find(params[:id])
  end

end