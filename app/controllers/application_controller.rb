# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_user

  def set_user
    User.current = current_user
  end
end
