require 'spec_helper'

describe ApplicationHelper, :helper do
  describe "#published_date_helper" do
    context "post has a #published_at timestamp" do
      it "prints the date as 'Month Day, Full-Year" do
        blog_entry = build(:blog_entry, published_at: Time.new(2012,5,18))

        published_date_helper(blog_entry).should eq('May 18, 2012')
      end
    end

    context "post does not have a #published_at timestamp" do
      it "returns an empty string" do
        blog_entry = build(:blog_entry, published_at: nil)

        published_date_helper(blog_entry).should eq('')
      end
    end
  end
end