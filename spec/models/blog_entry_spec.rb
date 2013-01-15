require 'spec_helper'

describe BlogEntry, :blog_entry, :model do
  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:content) }
  it { should_not validate_presence_of(:published_at) }
  it { should validate_presence_of(:title) }
end