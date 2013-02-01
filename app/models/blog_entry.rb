class BlogEntry < ActiveRecord::Base

  attr_accessible :author, :content, :published_at, :title

  validates_presence_of :author, :content, :title

  scope :published, -> { where('published_at IS NOT NULL') }

  def publish
    self.published_at ||= Time.now
    save!
  end

  def to_s
    title
  end

  def unpublish
    update_attributes!(published_at: nil)
  end

end