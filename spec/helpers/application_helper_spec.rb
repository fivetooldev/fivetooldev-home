require 'spec_helper'

describe ApplicationHelper, :application, :helper do

  describe "#flashes_present?" do
    context "when a flash notice exists" do
      it "returns true" do
        controller.stubs(flash: {notice: "This is a notice."})

        helper.flashes_present?.should be_true
      end
    end

    context "when a flash error exists" do
      it "returns true" do
        controller.stubs(flash: {error: "This is a error."})

        helper.flashes_present?.should be_true
      end
    end

    context "when no flashes exist" do
      it "returns false" do
        helper.flashes_present?.should be_false
      end
    end
  end
end