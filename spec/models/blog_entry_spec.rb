require 'spec_helper'

describe BlogEntry, :blog_entry, :model do
  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:content) }
  it { should_not validate_presence_of(:published_at) }
  it { should validate_presence_of(:title) }

  describe "#to_s" do
    it "returns the title" do
      blog_entry  = build(:blog_entry, title: 'A meaningful title')
    
      blog_entry.to_s.should eq('A meaningful title')
    end
  end

  describe ".published" do
    it "pulls published posts (posts with a published timestamp)" do
      create_list(:blog_entry, 5, published_at: Time.now)
      create_list(:blog_entry, 3, published_at: nil)

      BlogEntry.published.count.should eq(5)
    end
  end
end