class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :necesita_ember

  def about

  end

  private

  def necesita_ember
    if params[:action] == "about"
      logger.info "entra en about"
      "application_sin"
    else
      "application"
    end
  end

end
