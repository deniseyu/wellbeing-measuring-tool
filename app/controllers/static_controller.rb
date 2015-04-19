class StaticController < ApplicationController
  def welcome
    if user_signed_in?
      redirect_to studies_path
    end
  end
end
