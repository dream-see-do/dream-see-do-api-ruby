lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dream-see-do-api/version'

Gem::Specification.new do |gem|
  gem.add_development_dependency 'bundler', '~> 2.1.4'
  gem.add_dependency 'json_api_client', '~> 1.17', '>= 1.17.1'
  gem.authors       = ['Josh Schwartzman']
  gem.email         = %w[josh@dreamseedo.org]
  gem.description   = 'Dream See Do API wrapper.'
  gem.summary       = gem.description
  gem.homepage      = 'https://github.com/geeosh/dreamseedo-api-ruby'
  gem.licenses      = %w[MIT]
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- spec/*`.split("\n")
  gem.name          = 'dream-see-do-api'
  gem.require_paths = %w[lib]
  gem.version       = DreamSeeDoApi::VERSION
end
