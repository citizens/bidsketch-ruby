# Bidsketch

The bidsketch gem is a ruby wrapper for interacting with the [Bidsketch API](https://github.com/Bidsketch/bidsketch-api). 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bidsketch'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bidsketch

## Getting Started

You will need a Bidsketch API key. For instructions on finding your API key: http://help.bidsketch.com/article/76-using-the-bidsketch-api

## Authentication

```ruby
Bidsketch.api_key = 'YOUR API KEY'
```
Alternatively you can set your API key as an environment variable:

```ruby
ENV['BIDSKETCH_API_KEY'] = 'YOUR API KEY'
```
## Clients
To get all clients:

```ruby
Bidsketch::Client.all
```

To get a particular client:

```ruby
Bidsketch::Client.find(id)
```

## Fees

To get all fees:

```ruby
Bidsketch::Fee.all
```

To get a particular fee:

```ruby
Bidsketch::Fee.find(id)
```

## Proposals

To get all proposals:

```ruby
Bidsketch::Proposal.all
```

To get a particular proposal:

```ruby
Bidsketch::Proposal.find(id)
```

## Sections

To get all sections

```ruby
Bidsketch::Section.all
```

To get a particular section:

```ruby
Bidsketch::Section.find(id)
```

## Templates

To get all templates:

```ruby
Bidsketch::Template.all
```

To get a particular template:

```ruby
Bidsketch::Template.find(id)
```

## Contributing

1. Fork it ( https://github.com/citizens/bidsketch-ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request