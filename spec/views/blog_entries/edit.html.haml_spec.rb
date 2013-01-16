require 'spec_helper'

describe "blog_entries/edit", :blog_entry, :view, :edit do
  before(:each) do
    @blog_entry = assign(:blog_entry, build_stubbed(:blog_entry))
  end

  it "renders the edit blog_entry form" do
    render

    assert_select "form", action: blog_entries_path(@blog_entry), method: "post" do
      assert_select "input#blog_entry_author", name: "blog_entry[author]"
      assert_select "input#blog_entry_title", name: "blog_entry[title]"
      assert_select "textarea#blog_entry_content", name: "blog_entry[content]"
    end
  end
end