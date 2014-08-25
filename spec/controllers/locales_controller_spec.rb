require 'spec_helper'

describe LocalesController do

  before do
    request.env['HTTP_REFERER'] = '/'
    I18n.available_locales += [:wk] unless I18n.available_locales.include?(:wk)
  end

  describe "POST 'locales#setting'" do

    subject { post :setting, locale: :wk }

    context 'call resource' do
      before { subject }

      describe 'should redirect back' do
        specify do
          expect(response).to redirect_to '/'
        end
      end

      describe 'should store on session locale' do
        specify do
          expect(session[:locale]).to eql 'wk'
        end
      end

      describe 'should change locale application' do
        specify do
          expect(I18n.locale).to eql :wk
        end
      end

    end
  end
end
