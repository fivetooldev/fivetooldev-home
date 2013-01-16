class BlogController < ApplicationController

  layout 'blog'

  def index
    @blog_entries = BlogEntry.published
  end

  def show
    @blog_entry = BlogEntry.published.find(params[:id])
  end

end