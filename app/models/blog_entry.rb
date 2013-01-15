class BlogEntry < ActiveRecord::Base
  
  attr_accessible :author, :content, :published_at, :title

  validates_presence_of :author, :content, :title

end