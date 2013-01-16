require 'spec_helper'

describe "blog/show", :view, :show, :blog do
  before(:each) do
    @blog = build_stubbed(:blog_entry)
  end

  it "renders attributes in <p>" do
    render
  end
end