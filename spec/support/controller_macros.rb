module ControllerMacros

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods

    def it_should_respond_with_application_layout_html_and_success
      it { should render_with_layout(:application) }
      it { should respond_with_content_type(:html) }
      it { should respond_with(:success) }
    end

    def it_should_require_login_for_access(verbs = {})
      if verbs.empty?
        verbs = {
          get: [
            :index,
            :show,
            :new,
            :edit
          ],
          post: [:create],
          put: [:update],
          delete: [:destroy]
        }
      end

      verbs.each do |verb, actions|
        actions.each do |action|
          it "#{verb.to_s.upcase} #{action} should deny access" do
            sign_out
            send(verb, action, id: 1)
            controller.should deny_access(redirect: sign_in_path)
          end
        end
      end

    end

  end

end