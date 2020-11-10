require 'helper'

describe DreamSeeDoApi::Base do
  describe '.configure' do
    let(:dream_see_do_api_url) { 'https://www.dreamseedo.org/api/v2' }
    let(:api_token) { 'DREAMSEEDO_API_TOKEN ' }

    before do
      DreamSeeDoApi::Base.configure(
        api_url: dream_see_do_api_url,
        api_token: api_token,
      )
    end

    it 'sets .site' do
      expect(DreamSeeDoApi::Base.site).to eq(dream_see_do_api_url)
    end
  end
end
