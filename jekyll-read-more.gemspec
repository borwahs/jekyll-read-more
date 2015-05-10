$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)

require 'jekyll-read-more/version'

Gem::Specification.new do |gem_spec|

  # Essentials
  gem_spec.name         = 'jekyll-read-more'
  gem_spec.version      = Jekyll::ReadMore::VERSION
  gem_spec.date         = Date.today.to_s

  # Details
  gem_spec.summary      = 'A Liquid Filter to get an excerpt from a Jekyll Post.'
  gem_spec.description  = 'A Liquid Filter to determine if a Jekyll Post has an excerpt to display and get the excerpt.'

  # Owner
  gem_spec.authors      = ['Rob Shaw']
  gem_spec.email        = ['rob@borwahs.com']
  gem_spec.homepage     = 'https://github.com/borwahs/jekyll-read-more/'
  gem_spec.license      = 'MIT'

  # Files for Gem
  gem_spec.files        = Dir["./**/*"].reject{|file| file =~ /\.\/(doc|pkg|spec|test)/}
  gem_spec.require_path = 'lib'

  # Runtime Dependencies
  gem_spec.add_runtime_dependency 'liquid'

  # Development Dependencies
  gem_spec.add_development_dependency "rake"
  gem_spec.add_development_dependency 'jekyll'
end
