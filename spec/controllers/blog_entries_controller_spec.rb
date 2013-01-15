require 'spec_helper'

describe BlogEntriesController, :blog_entry, :controller do

  def attributes
    {'this' => 'that'}
  end

  context "when not logged in", :unauthorized do
    it_should_require_login_for_access
  end

  describe "when logged in" do
    before(:each) { sign_in_as(@user) }

    describe "routing", :routing do
      it { should route(:get, '/blog_entries').to(action: :index) }
      it { should route(:get, '/blog_entries/1').to(action: :show, id: 1) }
      it { should route(:get, '/blog_entries/1/edit').to(action: :edit, id: 1) }
      it { should route(:get, '/blog_entries/new').to(action: :new) }
      it { should route(:post, '/blog_entries').to(action: :create) }
      it { should route(:put, '/blog_entries/1').to(action: :update, id: 1) }
      it { should route(:delete, '/blog_entries/1')
        .to(action: :destroy, id: 1) }
    end

    before(:each) do
      @new_blog_entry = build_stubbed(:blog_entry)
      @blog_entry = build_stubbed(:blog_entry)
      @blog_entry.stubs(destroy: true)

      BlogEntry.stubs(
        all: [@blog_entry],
        new: @new_blog_entry
      )
      
      BlogEntry.stubs(:find).with('123').returns(@blog_entry)
    end

    describe "GET requests" do
      describe "GET index" do
        before { get :index }

        it { should assign_to(:blog_entries).with([@blog_entry]) }
        it { should render_template(:index) }
        it_should_respond_with_application_layout_html_and_success
      end

      describe "GET show" do
        before { get :show, id: 123 }

        it { should assign_to(:blog_entry).with(@blog_entry) }
        it { should render_template(:show) }
        it_should_respond_with_application_layout_html_and_success
      end

      describe "GET new" do
        before { get :new }
  
        it { should assign_to(:blog_entry).with(@new_blog_entry) }
        it { should render_template(:new) }
        it_should_respond_with_application_layout_html_and_success
      end
  
      describe "GET edit" do
        before { get :edit, id: 123 }
  
        it { should assign_to(:blog_entry).with(@blog_entry) }
        it { should render_template(:edit) }
        it_should_respond_with_application_layout_html_and_success
      end
    end

    describe "POST create" do
      describe "with valid params" do
        before do
          @new_blog_entry.stubs(save: true)

          post :create, blog_entry: attributes
        end

        it { should assign_to(:blog_entry).with(@new_blog_entry) }
        it { should redirect_to(blog_entry_path(@new_blog_entry.to_param)) }
        it { should respond_with(:redirect) }

        it "passes the parameters to BlogEntry.new" do
          BlogEntry.should have_received(:new).with(attributes)
        end

        it "calls #save on the blog entry" do
          @new_blog_entry.should have_received(:save)
            .with()
        end
      end
  
      describe "with invalid params" do
        before do
          @new_blog_entry.stubs(save: false)

          post :create, blog_entry: attributes
        end

        it { should assign_to(:blog_entry).with(@new_blog_entry) }
        it { should render_template(:new) }
        it_should_respond_with_application_layout_html_and_success

        it "passes the parameters to BlogEntry.new" do
          BlogEntry.should have_received(:new).with(attributes)
        end

        it "calls #save on the blog entry" do
          @new_blog_entry.should have_received(:save)
            .with()
        end
      end
    end
  
    describe "PUT update" do
      describe "with valid params" do
        before do
          @blog_entry.stubs(update_attributes: true)

          put :update, id: 123, blog_entry: attributes
        end
        
        it { should assign_to(:blog_entry).with(@blog_entry) }
        it { should redirect_to(blog_entry_path(@blog_entry.to_param)) }
        it { should respond_with(:redirect) }

        it "calls #update_attribute on the blog entry" do
          @blog_entry.should have_received(:update_attributes)
            .with(attributes)
        end
      end
  
      describe "with invalid params" do
        before do
          @blog_entry.stubs(update_attributes: false)

          put :update, id: 123, blog_entry: attributes
        end
  
        it { should assign_to(:blog_entry).with(@blog_entry) }
        it { should render_template(:edit) }
        it_should_respond_with_application_layout_html_and_success

        it "calls #update_attribute on the blog entry" do
          @blog_entry.should have_received(:update_attributes)
            .with(attributes)
        end
      end
    end
  
    describe "DELETE destroy" do
      before { delete :destroy, id: 123 }

      it { should assign_to(:blog_entry).with(@blog_entry) }
      it { should redirect_to(blog_entries_path) }
      it { should respond_with_content_type(:html) }
      it { should respond_with(:redirect) }

      it "sends destroys the requested blog entry" do
        @blog_entry.should have_received(:destroy)
      end
    end

  end

end