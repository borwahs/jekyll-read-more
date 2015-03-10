Gem::Specification.new do |gem_spec|
  gem_spec.name         = 'jekyll-read-more'
  gem_spec.version      = '0.1.0'
  gem_spec.date         = '2015-03-09'

  gem_spec.summary      = 'A Liquid Filter to get an excerpt from a Jekyll Post.'
  gem_spec.description  = 'A Liquid Filter to determine if a Jekyll Post has an excerpt to display and get the excerpt.'

  gem_spec.authors      = ['Rob Shaw']
  gem_spec.email        = ['rob@borwahs.com']
  gem_spec.homepage     = 'https://github.com/borwahs/jekyll-read-more/'
  gem_spec.license      = 'MIT'

  gem_spec.files        = Dir["./**/*"].reject{|file| file =~ /\.\/(doc|pkg|spec|test)/}
  gem_spec.require_path = 'lib'

  gem_spec.add_runtime_dependency 'liquid'
  gem_spec.add_development_dependency 'jekyll'
end
