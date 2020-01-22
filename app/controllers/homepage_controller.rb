# frozen_string_literal: true

class HomepageController < ApplicationController
  def index
    - if user_signed_in?
        redirect_to '/offers'
      else
        redirect_to '/users/sign_in'
      end

  end
end
