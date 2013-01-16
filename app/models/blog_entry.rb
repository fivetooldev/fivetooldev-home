class BlogEntry < ActiveRecord::Base
  
  attr_accessible :author, :content, :published_at, :title

  validates_presence_of :author, :content, :title

  scope :published, -> { where('published_at IS NOT NULL') }

end