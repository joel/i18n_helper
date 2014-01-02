$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'i18n_helper/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'i18n_helper'
  s.version     = I18nHelper::VERSION
  s.date        = '2014-01-02'
  s.authors     = ['Joel AZEMAR']
  s.email       = ['joel.azemar@gmail.com']
  s.homepage    = 'https://github.com/joel/i18n_helper'
  s.summary     = 'Summary of I18nHelper.'
  s.description = 'Description of I18nHelper.'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  # s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 4.0'
  s.add_dependency 'i18n-language-translations', '~> 0.0' # 0.0.2 actual

  s.add_development_dependency 'rspec-rails', '~> 2.14'
  s.add_development_dependency 'factory_girl_rails', '~> 4.3'
  s.add_development_dependency 'gemnasium', '~> 2.0'
  s.add_development_dependency 'coveralls', '~> 0.7'

  s.required_ruby_version = '~> 2.0'

  s.test_files = Dir['spec/**/*']
end
