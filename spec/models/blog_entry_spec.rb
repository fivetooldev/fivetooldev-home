require 'spec_helper'

describe BlogEntry, :blog_entry, :model do
  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:content) }
  it { should_not validate_presence_of(:published_at) }
  it { should validate_presence_of(:title) }

  describe ".published" do
    it "pulls published posts (posts with a published timestamp)" do
      create_list(:blog_entry, 5, published_at: Time.now)
      create_list(:blog_entry, 3, published_at: nil)

      BlogEntry.published.count.should eq(5)
    end
  end
end