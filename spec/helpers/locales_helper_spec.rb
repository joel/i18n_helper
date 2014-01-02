require 'spec_helper'

describe LocalesHelper do

  before { I18n.locale = :en }

  describe '#formatted_locale' do
    it do
      expect(
        helper.formatted_locale(:en)
      ).to eq('Language : English')
    end
  end

  describe '#i18n_helper' do

    before { I18n.locale = locale }
    after { I18n.locale = I18n.default_locale }

    context 'en' do
      let(:locale) { :en }
      let(:data) do
        [
          ['en', 'English'],
          ['fr', 'French']
        ]
      end
      it do
        expect(
          helper.i18n_helper
        ).to eq data
      end
    end

    context 'fr' do
      let(:locale) { :fr }
      let(:data) do
        [
          ['en', 'Anglais'],
          ['fr', 'Français']
        ]
      end
      it do
        expect(
          helper.i18n_helper
        ).to eq data
      end
    end

  end

  describe 'i18n_helper_link' do
    before { I18n.locale = :en }
    after { I18n.locale = I18n.default_locale }

    context 'en' do
      let(:data) do
        [
          "<a data-method=\"post\" href=\"/locales/en\" rel=\"nofollow\">English</a>",
          "<a data-method=\"post\" href=\"/locales/fr\" rel=\"nofollow\">French</a>"
        ]
      end
      it do
        expect(
          helper.i18n_helper_link
        ).to eq data
      end
    end

  end

end