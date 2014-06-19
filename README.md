# pry-suite

pry-suite is designed to set up a nice Pry ecosystem out of the box. With pry-suite, you are given Pry with access to a suite of great plugins. Currently, the following plugins will get installed along with Pry:

 * [pry-byebug][pry-byebug] (Integration with the Ruby 2 debugger, [byebug][byebug])
   * On Ruby 1.9.x, this is replaced with [pry-debugger][pry-debugger]
 * [pry-doc][pry-doc] (allows you to look into the Ruby builtin classes with the ? and $ commands)
 * [pry-docmore][pry-docmore] (extends pry-doc for dollar-variables and keywords)
 * [pry-git][pry-git] (method-level git commands)
 * [pry-macro][pry-macro] (allows you to record and reuse Pry sessions)
 * [pry-highlight][pry-highlight] (reformat strings with pretty-printing, auto-detecting JSON/XML/Ruby)
 * [pry-pretty-numeric][pry-pretty-numeric] (reformats large numbers, e.g. 1234567890 to 1_234_567_890)
 * [pry-rescue][pry-rescue] (provides `Pry.rescue { ... }` blocks to capture any exceptions and start a Pry session)
 * [pry-stack_explorer][pry-stack_explorer] (allows you to navigate the call stack)

Finally, the [gist][gist] gem also gets installed to enable Pry's `gist` command.

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

[byebug]: https://github.com/deivid-rodriguez/byebug
[gist]: https://github.com/defunkt/gist
[pry-byebug]: https://github.com/deivid-rodriguez/pry-byebug
[pry-debugger]: https://github.com/nixme/pry-debugger
[pry-doc]: https://github.com/pry/pry-doc
[pry-docmore]: https://github.com/rking/pry-docmore
[pry-git]: https://github.com/pry/pry-git
[pry-macro]: https://github.com/baweaver/pry-macro
[pry-highlight]: https://github.com/ConradIrwin/pry-highlight
[pry-pretty-numeric]: https://github.com/genki/pry-pretty-numeric
[pry-rescue]: https://github.com/ConradIrwin/pry-rescue
[pry-stack_explorer]: https://github.com/pry/pry-stack_explorer
