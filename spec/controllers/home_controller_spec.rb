require 'rails_helper'

describe HomeController do
  describe "GET 'index'", vcr: true do
    it 'should redirect with notice when no search term is present' do
      process :index, method: :get, params: { search_term: '' }
      expect(response).to redirect_to(root_path)
      expect(flash[:notice]).to eq('You must search for something')
    end

    it 'should render the page without flash on refresh' do
      process :index, method: :get
      expect(flash[:notice]).to eq(nil)
    end
  end
end