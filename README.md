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

Make sure you have an actionmailer method setup in your environment.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
