require 'helper'

describe DreamseedoApi::Base do
  describe '.configure' do
    let(:dreamseedo_api_url) { 'https://www.dreamseedo.org/api/v2' }
    let(:api_token) { 'DREAMSEEDO_API_TOKEN ' }

    before do
      DreamseedoApi::Base.configure(
        api_url: dreamseedo_api_url,
        api_token: api_token,
      )
    end

    it 'sets .site' do
      expect(DreamseedoApi::Base.site).to eq(dreamseedo_api_url)
    end
  end
end
