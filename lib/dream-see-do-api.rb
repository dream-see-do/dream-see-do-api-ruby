require 'json_api_client'

puts defined?(JsonApiClient::Paginating::Paginator.page_param)

if defined?(JsonApiClient::Paginating::Paginator.page_param)
  # Use correct page parameters for Network API
  # (only works when included in Rails environment)
  JsonApiClient::Paginating::Paginator.page_param = 'number'
  JsonApiClient::Paginating::Paginator.per_page_param = 'size'
end

require 'dream-see-do-api/version'
require 'dream-see-do-api/base'

require 'dream-see-do-api/block'
require 'dream-see-do-api/conversation'
require 'dream-see-do-api/conversation_participant'
require 'dream-see-do-api/course'
require 'dream-see-do-api/event'
require 'dream-see-do-api/event_attendee'
require 'dream-see-do-api/group'
require 'dream-see-do-api/message'
require 'dream-see-do-api/notification'
require 'dream-see-do-api/profile'
require 'dream-see-do-api/response'
require 'dream-see-do-api/role'
require 'dream-see-do-api/step'
require 'dream-see-do-api/step_response'
require 'dream-see-do-api/time_booking'
require 'dream-see-do-api/up_next_item'
require 'dream-see-do-api/user'
