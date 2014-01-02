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
        it { response.should redirect_to '/' }
      end

      describe 'should store on session locale' do
        it { session[:locale].should eql 'wk' }
      end

      describe 'should change locale application' do
        it { I18n.locale.should eql :wk }
      end

    end
  end
end
