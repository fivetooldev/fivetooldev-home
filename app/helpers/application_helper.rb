##
# ApplicationHelper has site-wide helpers.
##
module ApplicationHelper

  def flashes_present?
    flash.any?
  end

end
