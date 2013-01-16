require 'spec_helper'

describe "blog_entries/new", :blog_entry, :view, :new do
  before(:each) do
    assign(:blog_entry, build(:blog_entry))
  end

  it "renders new blog_entry form" do
    render

    assert_select "form", action: blog_entries_path, method: "post" do
      assert_select "input#blog_entry_author", name: "blog_entry[author]"
      assert_select "input#blog_entry_title", name: "blog_entry[title]"
      assert_select "textarea#blog_entry_content", name: "blog_entry[content]"
    end
  end
end