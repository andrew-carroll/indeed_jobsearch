# IndeedJobsearch [![Coverage Status](https://coveralls.io/repos/andrew-carroll/indeed_jobsearch/badge.svg?branch=master&service=github)](https://coveralls.io/github/andrew-carroll/indeed_jobsearch?branch=master) [![Build Status](https://circleci.com/gh/andrew-carroll/indeed_jobsearch.svg?style=shield&circle-token=5f73b0fc84e352ec3c03acb0771526d80326f5b8)](https://circleci.com/gh/andrew-carroll/indeed_jobsearch) [![Code Climate](https://codeclimate.com/github/andrew-carroll/indeed_jobsearch/badges/gpa.svg)](https://codeclimate.com/github/andrew-carroll/indeed_jobsearch)

A client library for searching Indeed jobs without using the official API. There are a couple advantages to this, including not requiring authorization, as well as being able to fetch search results for third-party job ads. If you are looking for a client library for the official API, use [Indeed's official gem](https://github.com/indeedlabs/indeed-ruby) instead.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'indeed_jobsearch'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install indeed_jobsearch

## Usage

```ruby
require 'indeed_jobsearch'
search = IndeedJobsearch::Search.new(job_title, city)
results = search.page(1)
```

This will return an array of SearchResult objects with the following readable attributes:
* Job title
* Company
* Location
* Time the job was posted
* Time the job was scraped
* Job URL

**Please note that this library does not enforce rate limiting. Please be courteous and limit usage to an appropriate rate.**

## Contributing

1. Fork it ( https://github.com/andrew-carroll/indeed_jobsearch/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
