require 'spec_helper'

describe "blog_entries/show", :blog_entry, :view, :show do
  before(:each) do
    @blog_entry = assign(:blog_entry, build_stubbed(:blog_entry))
  end

  it "renders attributes in <p>" do
    render

    rendered.should match(/#{build(:blog_entry).author}/)
    rendered.should match(/#{build(:blog_entry).content}/)
    rendered.should match(/#{build(:blog_entry).title}/)
  end
end