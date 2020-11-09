# Dream See Do API - Ruby

Ruby wrappers for Dream See Do V2 API.

## Installing

Add to your `Gemfile`:

```ruby
gem 'dreamseedo-api-ruby', git: 'https://github.com/geeosh/dreamseedo-api-ruby.git'
```

Then `bundle install`.

## Usage

These three configuration variables must be set in an initializer (e.g. `/config/initializers/dreamseedo_api.rb`):

```
require 'dreamseedo-api'

DreamSeeDoApi::Base.configure(
  url: 'https://www.dreamseedo.org/api/v2',
  api_token: ENV['DREAMSEEDO_API_TOKEN']
)
```

Then you can use any of the supported models:

```
DreamSeeDoApi::Block
DreamSeeDoApi::Course
DreamSeeDoApi::Event
DreamSeeDoApi::Group
DreamSeeDoApi::Profile
DreamSeeDoApi::Response
DreamSeeDoApi::Role
DreamSeeDoApi::StepResponse
DreamSeeDoApi::Step
DreamSeeDoApi::User
```

To enable detailed request logging, you can set `ENV['DEBUG'] = '1'`

## Testing

We have built class and instance-level mocking methods that you can use in RSpec.

To include these, add to your spec helper:

```ruby
require 'dreamseedo-api-mocks'

RSpec.configure do |config|
  config.include DreamseedoApiMocks
end
```

In your tests, you can register all models that you'd like mocked in before block, such as:

```ruby
before do
  dreamseedo_api_register_double('DreamSeeDoApi::Course')
end
```

That will mock the DreamSeeDoApi::Course class, adding default return values for where/new/create methods. It also adds instance doubles.

For Example:

```ruby

before do
  dreamseedo_api_register_double('DreamSeeDoApi::Course')
end

context 'mocking create' do
  # Uses default instance double and adds custom attribute
  let(:course_instance) do
    dreamseedo_api_course_instance_double(id: 45)
  end

  # Mocks DreamseedoApi::Course and sets `create` to return instance
  before do
    dreamseedo_api_collection_double(create: collection_instance)
  end

  it 'should return values' do
    expect(
      DreamSeeDoApi::Course
    ).to receive(:create).and_return(course_instance)
  end
end
```
