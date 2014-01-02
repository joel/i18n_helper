Rails.application.routes.draw do
  post 'locales/:locale' => 'locales#setting', as: :set_locale
end
