class BlogEntriesController < ApplicationController

  before_filter :authorize
  before_filter :find_blog_entry, 
    only: [:show, :edit, :update, :destroy]
  before_filter :new_blog_entry,
    only: [:new, :create]

  # GET /blog_entries
  # GET /blog_entries.json
  def index
    @blog_entries = BlogEntry.all
  end

  # GET /blog_entries/1
  # GET /blog_entries/1.json
  def show
  end

  # GET /blog_entries/new
  # GET /blog_entries/new.json
  def new
  end

  # GET /blog_entries/1/edit
  def edit
  end

  # POST /blog_entries
  # POST /blog_entries.json
  def create
    if @blog_entry.save
      redirect_to @blog_entry, notice: 'Blog entry was successfully created.'
    else
      render :new
    end
  end

  # PUT /blog_entries/1
  # PUT /blog_entries/1.json
  def update
    if @blog_entry.update_attributes(params[:blog_entry])
      redirect_to @blog_entry, notice: 'Blog entry was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /blog_entries/1
  # DELETE /blog_entries/1.json
  def destroy
    @blog_entry.destroy

    redirect_to blog_entries_url
  end

  private

  def find_blog_entry
    @blog_entry = BlogEntry.find(params[:id])
  end

  def new_blog_entry
    @blog_entry = BlogEntry.new(params[:blog_entry])
  end

end