require 'spec_helper'

describe "blog_entries/index", :blog_entry, :view, :index do
  before(:each) do
    assign(:blog_entries, [
      build_stubbed(:blog_entry),
      build_stubbed(:blog_entry)
    ])
  end

  it "renders a list of blog_entries" do
    render

    assert_select "tr>td", 
      text: build(:blog_entry).author.to_s, count: 2
    assert_select "tr>td",
      text: build(:blog_entry).content.to_s, count: 2
    assert_select "tr>td", 
      text: build(:blog_entry).title.to_s, count: 2
  end
end