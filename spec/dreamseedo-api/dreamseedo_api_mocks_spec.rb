require 'helper'
require 'dreamseedo-api-mocks'

describe Class do
  include DreamseedoApiMocks

  it 'lets you register doubles' do
    expect(respond_to?('dreamseedo_api_item_double')).to be false
    dreamseedo_api_register_instance_double('DreamseedoApi::Course')
    expect(respond_to?('dreamseedo_api_course_double')).to be true
  end

  it 'lets you assert expectations against the doubles' do
    expect(respond_to?('dreamseedo_api_course_instance_double')).to be false
    dreamseedo_api_register_instance_double('DreamseedoApi::Course')
    expect(respond_to?('dreamseedo_api_course_instance_double')).to be true
    expect(DreamseedoApi::Course).to receive(:create).and_return(
      dreamseedo_api_course_instance_double,
    )
    DreamseedoApi::Course.create({})
  end

  context 'with custom doubles provided' do
    let(:custom_double) { double('DreamseedoApi::Course', id: 456) }
    before do
      dreamseedo_api_register_instance_double('DreamseedoApi::Course', create: custom_double)
    end

    it 'returns custom doubles' do
      expect(DreamseedoApi::Course).to receive(:create).and_return(
        custom_double,
      )
      DreamseedoApi::Course.create({})
    end
  end
end
