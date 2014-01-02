# I18nEngineHelper

This is a really straightforward I18n locales helper. It can you help to change locale web app on the fly.

# Features

The locale of app is recorded on current session.

## Installation

Add to your top of Gemfile:

	gem 'i18n_engine_helper'

## Usage

Gem come with two main helpers ```formatted_locale``` and ```i18n_helper_link```
 
```formatted_locale``` provide ``` 'Language : English' ``` title, entirely translated in your current locale

```i18n_helper_link``` provide links ready to use for call controller for change your web app locales on the fly.

If you need more customize you can call directly ```i18n_helper``` helper, this one provide an Array ready to generate Html select translated in your current locale like that :

	[ ['en', 'English'], ['fr', 'French'] ]

## Caution 

It a really first alpha version of this Helper, if you add any feature please contribute!

# User profil locale setting 

If you use an authentication system, like ```Devise```, and your ```User model``` like (```Devise Resource```) accessible through the ```current_user``` method helper it automatically set the locale for the who is logged.

## Dependencies

* Ruby 2.1
* rails ~> 4.0.2
* i18n-language-translations ~> 0.0.2

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request