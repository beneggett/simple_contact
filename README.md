[![Gem Version](https://badge.fury.io/rb/simple_contact.png)](http://badge.fury.io/rb/simple_contact) [![Build Status](https://travis-ci.org/beneggett/simple_contact.png?branch=master)](https://travis-ci.org/beneggett/simple_contact) [![Coverage Status](https://coveralls.io/repos/beneggett/simple_contact/badge.png)](https://coveralls.io/r/beneggett/simple_contact)
 [![Code Climate](https://codeclimate.com/github/beneggett/simple_contact.png)](https://codeclimate.com/github/beneggett/simple_contact)   

# Simple Contact

Provides a stupidly simple contact form with bootstrap class theming for rails

## Installation

Add this line to your application's Gemfile:

    gem 'simple_contact'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_contact

## Usage

Using Simple Contact is Easy.

Simply mount it within your application's routes file where you want your contact form:

```
mount SimpleContact::Engine => "/contact-me"
```

Make sure you have an Action Mailer method setup in your environment.

Simple Contact uses Environment variables to setup your email's to, cc, bcc, and subject prefix lines
You can set them by simply setting environmant variables within your own app:

```
ENV['SIMPLE_CONTACT_TO_EMAIL'] = 'to_me@example.com'
ENV['SIMPLE_CONTACT_CC_EMAIL'] = 'cc_me@example.com, cc_me2@example.com'
ENV['SIMPLE_CONTACT_BCC_EMAIL'] = 'bcc_me@example.com, bcc_me2@example.com'
ENV['SIMPLE_CONTACT_SUBJECT_PREFIX'] = "[Simple Contact]"
```

## Customization

Simple Contact messaging is entirely translated. The messages can all be overriden by standard conventions as described in [Rails I18n Guides](http://guides.rubyonrails.org/i18n.html)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/beneggett/simple_contact/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

