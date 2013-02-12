class BlogController < ApplicationController

  layout 'blog'

  def index
    redirect_to 'http://blog.fivetool.io'
  end

  def show
    redirect_to 'http://blog.fivetool.io'
  end

end