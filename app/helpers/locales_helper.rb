module LocalesHelper

  def formatted_locale current_locale = I18n.locale
    I18n.t('helpers.links.locale', current_locale: t("languages.#{current_locale}", locale: current_locale))
  end

  def i18n_helper
    @i18n_helper = begin
      [].tap do |locales|
        I18n.available_locales.each do |locale|
          locales << [ locale.to_s, I18n.t("languages.#{locale}").capitalize ]
        end
      end
    end
  end

  def i18n_helper_link
    @i18n_helper_link = begin
      [].tap do |links|
        i18n_helper.each do |locale, title|
          links << link_to(title, set_locale_path(locale: locale), method: :post)
        end
      end
    end
  end

end
