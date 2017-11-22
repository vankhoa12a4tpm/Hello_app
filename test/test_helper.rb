require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"

module ActiveSupport
  class TestCase
    fixtures :all
  end

  def is_logged_in?
    !session[:user_id].nil?
  end
end
