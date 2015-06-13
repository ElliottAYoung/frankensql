# Frankensql

This is the Frankensql gem, it's fairly basic as of right now, what it does is it takes in a table and some parameters and will create a SQL query based on what is there, omitting what is not, to allow for the query to be executed without checking unnecessary fields. I originally designed this to go with a basic search engine where I had to check through a quarter million records, using this approach I was able to get it subsecond and working beautifully. I made this gem with the hope it could help someone else out too!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'frankensql'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install frankensql

## Usage

Using the gem is fairly simple, there is one useable command

```ruby
Frankensql.search(table, params)
```

This command takes in the table that you want to search and the entire params hash. It will then output the SQL query based on which params are present and which are not. To then use this SQL query with ActiveRecord just run the command like so:

```ruby
ActiveRecord::Base.connection.execute(Frankensql.search(table, params))
```

This should return a JSON object based on whatever data you have living in your DB.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/frankensql. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

