require 'spec_helper'

describe "blog/index", :view, :index, :blog do
  before(:each) do
    assign(:blog_entries, [
      build_stubbed(:blog_entry),
      build_stubbed(:blog_entry)
    ])
  end

  it "renders a list of blogs" do
    render
  end
end
