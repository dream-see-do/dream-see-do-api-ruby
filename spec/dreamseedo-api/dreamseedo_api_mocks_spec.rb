require 'helper'
require 'dream-see-do-api-mocks'

describe Class do
  include DreamSeeDoApiMocks

  it 'lets you register doubles' do
    expect(respond_to?('dream_see_do_api_item_double')).to be false
    dream_see_do_api_register_instance_double('DreamSeeDoApi::Course')
    expect(respond_to?('dream_see_do_api_course_double')).to be true
  end

  it 'lets you assert expectations against the doubles' do
    expect(respond_to?('dream_see_do_api_course_instance_double')).to be false
    dream_see_do_api_register_instance_double('DreamSeeDoApi::Course')
    expect(respond_to?('dream_see_do_api_course_instance_double')).to be true
    expect(DreamSeeDoApi::Course).to receive(:create).and_return(
      dream_see_do_api_course_instance_double,
    )
    DreamSeeDoApi::Course.create({})
  end

  context 'with custom doubles provided' do
    let(:custom_double) { double('DreamSeeDoApi::Course', id: 456) }
    before do
      dream_see_do_api_register_instance_double('DreamSeeDoApi::Course', create: custom_double)
    end

    it 'returns custom doubles' do
      expect(DreamSeeDoApi::Course).to receive(:create).and_return(
        custom_double,
      )
      DreamSeeDoApi::Course.create({})
    end
  end
end
