require 'spec_helper'

describe BlogController, :blog, :controller do

  before(:each) do
    @blog_entry = build_stubbed(:blog_entry)
    @published = stub('published posts',
      find: @blog_entry 
    )

    BlogEntry.stubs(published: @published)

    BlogEntry.stubs(:find).with('123').returns(@blog_entry)
  end

  describe "GET index" do
    before { get :index }

    it { should assign_to(:blog_entries).with(@published) }
    it { should render_template(:index) }
    it { should render_with_layout(:blog) }
    it { should respond_with_content_type(:html) }
    it { should respond_with(:success) }

    it "only calls published entries" do
      BlogEntry.should have_received(:all).never
      BlogEntry.should have_received(:published)
    end
  end

  describe "GET show" do
    before { get :show, id: 123 }

    it { should assign_to(:blog_entry).with(@blog_entry) }
    it { should render_template(:show) }
    it { should render_with_layout(:blog) }
    it { should respond_with_content_type(:html) }
    it { should respond_with(:success) }

    it "only calls published entries" do
      BlogEntry.should have_received(:find).never
      @published.should have_received(:find).with('123')
    end
  end

end