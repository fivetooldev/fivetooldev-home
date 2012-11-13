class BlogEntriesController < ApplicationController
  # GET /blog_entries
  # GET /blog_entries.json
  def index
    @blog_entries = BlogEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blog_entries }
    end
  end

  # GET /blog_entries/1
  # GET /blog_entries/1.json
  def show
    @blog_entry = BlogEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog_entry }
    end
  end

end
