# Dream See Do API - Ruby

Ruby wrappers for Dream See Do V2 API.

## Installing

Add to your `Gemfile`:

```ruby
gem 'dreamseedo-api-ruby', git: 'https://github.com/dream-see-do/dream-see-do-api-ruby.git'
```

Then `bundle install`.

## Usage

These two configuration variables must be set in an initializer (e.g. `/config/initializers/dream_see_do_api.rb`):

```
require 'dream-see-do-api'

DreamSeeDoApi::Base.configure(
  api_token: ENV['DREAMSEEDO_API_TOKEN']
)
```

If you are using a staging or other API URL, you can provide the `api_url` parameter:

```
DreamSeeDoApi::Base.configure(
  api_url: 'https://www.dreamseedo.org/api/v2',
  api_token: ENV['DREAMSEEDO_API_TOKEN']
)
```

Then you can use any of the supported models:

```
DreamSeeDoApi::Activity
DreamSeeDoApi::Block
DreamSeeDoApi::BlockResponse
DreamSeeDoApi::Certificate
DreamSeeDoApi::Comment
DreamSeeDoApi::ConversationParticipant
DreamSeeDoApi::Conversation
DreamSeeDoApi::Course
DreamSeeDoApi::CustomNotification
DreamSeeDoApi::EngagementScore
DreamSeeDoApi::EventAttendee
DreamSeeDoApi::Event
DreamSeeDoApi::Form
DreamSeeDoApi::FormResponse
DreamSeeDoApi::Group
DreamSeeDoApi::Hit
DreamSeeDoApi::Invite
DreamSeeDoApi::Like
DreamSeeDoApi::Location
DreamSeeDoApi::Message
DreamSeeDoApi::Notification
DreamSeeDoApi::Plan
DreamSeeDoApi::Profile
DreamSeeDoApi::Resource
DreamSeeDoApi::Response
DreamSeeDoApi::Role
DreamSeeDoApi::StepResponse
DreamSeeDoApi::Step
DreamSeeDoApi::Theme
DreamSeeDoApi::TimeAvailability
DreamSeeDoApi::TimeBookingTemplate
DreamSeeDoApi::TimeBooking
DreamSeeDoApi::TruScoreSurveyResponse
DreamSeeDoApi::UpNextItem
DreamSeeDoApi::User
DreamSeeDoApi::Video
DreamSeeDoApi::ZoomMeeting
```

_Note: there are some other models in this library that do not have their own endpoint, but can be requested as a sideload._

To enable detailed request logging, you can set `ENV['DEBUG'] = '1'`

## Testing

We have built class and instance-level mocking methods that you can use in RSpec.

To include these, add to your spec helper:

```ruby
require 'dream-see-do-api-mocks'

RSpec.configure do |config|
  config.include DreamSeeDoApiMocks
end
```

In your tests, you can register all models that you'd like mocked in before block, such as:

```ruby
before do
  dream_see_do_api_register_instance_double('DreamSeeDoApi::Course')
end
```

That will mock the DreamSeeDoApi::Course class, adding default return values for where/new/create methods. It also adds instance doubles.

For Example:

```ruby

before do
  dream_see_do_api_register_instance_double('DreamSeeDoApi::Course')
end

context 'mocking create' do
  # Uses default instance double and adds custom attribute
  let(:course_instance) do
    dream_see_do_api_course_instance_double(id: 45)
  end

  # Mocks DreamSeeDoApi::Course and sets `create` to return instance
  before do
    dream_see_do_api_collection_double(create: course_instance)
  end

  it 'should return values' do
    expect(
      DreamSeeDoApi::Course
    ).to receive(:create).and_return(course_instance)
  end
end
```
