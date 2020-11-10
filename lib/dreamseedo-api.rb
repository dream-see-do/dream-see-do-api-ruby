require 'json_api_client'

puts defined?(JsonApiClient::Paginating::Paginator.page_param)

if defined?(JsonApiClient::Paginating::Paginator.page_param)
  # Use correct page parameters for Network API
  # (only works when included in Rails environment)
  JsonApiClient::Paginating::Paginator.page_param = 'number'
  JsonApiClient::Paginating::Paginator.per_page_param = 'size'
end

require 'dreamseedo-api/version'
require 'dreamseedo-api/base'

require 'dreamseedo-api/block'
require 'dreamseedo-api/course'
require 'dreamseedo-api/event'
require 'dreamseedo-api/group'
require 'dreamseedo-api/profile'
require 'dreamseedo-api/response'
require 'dreamseedo-api/role'
require 'dreamseedo-api/step'
require 'dreamseedo-api/step_response'
require 'dreamseedo-api/user'
