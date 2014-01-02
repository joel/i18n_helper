$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'i18n_engine_helper/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'i18n_engine_helper'
  s.version     = I18nEngineHelper::VERSION
  s.authors     = ['TODO: Joel AZEMAR']
  s.email       = ['TODO: joel.azemar@gmail.com']
  s.homepage    = 'TODO'
  s.summary     = 'TODO: Summary of I18nEngineHelper.'
  s.description = 'TODO: Description of I18nEngineHelper.'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 4.0.2'
  s.add_dependency 'i18n-language-translations', '~> 0.0.2'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'

  s.test_files = Dir['spec/**/*']
end
