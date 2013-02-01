require 'spec_helper'

describe BlogEntry, :blog_entry, :model do
  before(:each) { Timecop.freeze(Time.new(2013,2,1,13,35)) }

  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:content) }
  it { should_not validate_presence_of(:published_at) }
  it { should validate_presence_of(:title) }

  describe '#publish' do
    context 'with an unpublished article' do
      let(:blog_entry) { create(:blog_entry, published_at: nil) }

      it 'sets the published_at time' do
        blog_entry.publish

        blog_entry.published_at.should eq(Time.new(2013,2,1,13,35))
      end

      it 'saves the model' do
        blog_entry.publish

        blog_entry.changed?.should be_false
      end
    end

    context 'with a published article' do
      let(:blog_entry) { create(:blog_entry, published_at: Time.new(2013,1,1)) }

      it 'sets the published_at time' do
        blog_entry.publish

        blog_entry.published_at.should eq(Time.new(2013,1,1))
      end

      it 'saves the model' do
        blog_entry.publish

        blog_entry.changed?.should be_false
      end
    end
  end

  describe "#to_s" do
    it "returns the title" do
      blog_entry  = build(:blog_entry, title: 'A meaningful title')

      blog_entry.to_s.should eq('A meaningful title')
    end
  end

  describe '#unpublish' do
    let(:blog_entry) { create(:blog_entry, published_at: Time.now) }

    it 'sets the published_at time to nil' do
      blog_entry.unpublish

      blog_entry.published_at.should be_nil
    end

    it 'saves the model' do
      blog_entry.unpublish

      blog_entry.changed?.should be_false
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