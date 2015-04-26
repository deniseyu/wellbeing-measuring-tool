class StaticController < ApplicationController
  layout 'static'
  
  def welcome
    if user_signed_in?
      redirect_to studies_path
    end
  end

  def success
  end
end
