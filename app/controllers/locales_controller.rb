class LocalesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def setting
    if params[:locale] and I18n.available_locales.include?(params[:locale].to_sym)
      session[:locale] = params[:locale]
      I18n.locale = params[:locale]
      if self.respond_to? :current_user
        if current_user and current_user.respond_to?(:locale)
          current_user.update locale: params[:locale]
        end
      end
    end
    redirect_to :back
  end

end
