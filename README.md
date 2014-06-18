# Pry::Suite

pry-suite is designed to set up a nice Pry ecosystem out of the box. With pry-suite, you are given Pry with access to a suite of great plugins. Currently, the following plugins will get installed along with Pry:

 * pry-byebug (Integration with the byebug Ruby debugger)
   * On Ruby 1.9.x, this is replaced with pry-debugger
 * pry-doc (allows you to look into the Ruby builtin classes with the ? and $ commands)
 * pry-docmore (extends pry-doc for dollar-variables and keywords)
 * pry-git (method-level git commands)
 * pry-highlight (reformat strings with pretty-printing, auto-detecting JSON/XML/Ruby)
 * pry-pretty-numeric (reformats large numbers, e.g. 1234567890 to 1_234_567_890)
 * pry-rescue (provides `Pry.rescue { ... }` blocks to capture any exceptions and start a Pry session)
 * pry-stack_explorer (allows you to navigate the call stack)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pry-suite'
```

And then run:

```sh
$ bundle install
```

Or install it for use as an `irb` replacement:

```sh
$ gem install pry-suite
```


## Contributing

1. Fork it ( https://github.com/davidcelis/pry-suite/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
