source ENV['GEM_SOURCE'] || 'https://rubygems.org'

gemspec

group :release, optional: true do
  gem 'faraday-retry', '~> 2.1', require: false
  gem 'github_changelog_generator', '~> 1.16', require: false
end

group :coverage, optional: ENV['CODECOV'] != 'yes' do
  gem 'codecov', require: false
  gem 'simplecov-console', require: false
end
