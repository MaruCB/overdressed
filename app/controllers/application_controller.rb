class ApplicationController < ActionController::Base
  private

  # def after_sign_out_path_for(*)
  #   redirect_to root_path
  #   # request.referrer
  # end

  def after_sign_out_path_for(resource)
    # home
  end
end
