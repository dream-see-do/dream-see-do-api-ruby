require 'json_api_client'

if defined?(JsonApiClient::Paginating::Paginator.page_param)
  # Use correct page parameters for Network API
  # (only works when included in Rails environment)
  JsonApiClient::Paginating::Paginator.page_param = 'number'
  JsonApiClient::Paginating::Paginator.per_page_param = 'size'
end

require 'dream-see-do-api/version'
require 'dream-see-do-api/base'

require 'dream-see-do-api/activity'
require 'dream-see-do-api/block'
require 'dream-see-do-api/block_response'
require 'dream-see-do-api/certificate'
require 'dream-see-do-api/comment'
require 'dream-see-do-api/conversation'
require 'dream-see-do-api/conversation_participant'
require 'dream-see-do-api/course'
require 'dream-see-do-api/custom_notification'
require 'dream-see-do-api/engagement_score'
require 'dream-see-do-api/event'
require 'dream-see-do-api/form_field_option'
require 'dream-see-do-api/form_field'
require 'dream-see-do-api/form_response'
require 'dream-see-do-api/form'
require 'dream-see-do-api/google_document'
require 'dream-see-do-api/hit'
require 'dream-see-do-api/event_attendee'
require 'dream-see-do-api/group'
require 'dream-see-do-api/invite'
require 'dream-see-do-api/life_event'
require 'dream-see-do-api/like'
require 'dream-see-do-api/location'
require 'dream-see-do-api/message'
require 'dream-see-do-api/note'
require 'dream-see-do-api/notification'
require 'dream-see-do-api/plan'
require 'dream-see-do-api/post'
require 'dream-see-do-api/product'
require 'dream-see-do-api/profile'
require 'dream-see-do-api/resource'
require 'dream-see-do-api/response'
require 'dream-see-do-api/role'
require 'dream-see-do-api/step_response'
require 'dream-see-do-api/step'
require 'dream-see-do-api/theme'
require 'dream-see-do-api/time_availability'
require 'dream-see-do-api/time_booking_template'
require 'dream-see-do-api/time_booking'
require 'dream-see-do-api/tru_score_survey_response'
require 'dream-see-do-api/up_next_item'
require 'dream-see-do-api/user'
require 'dream-see-do-api/video'
require 'dream-see-do-api/zoom_meeting'
require 'dream-see-do-api/zoom_recording'
