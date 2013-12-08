# Multisearch

A gem to search a model based on a single term accross multiple specified columns and return a Hash of results where each key is a column name and each value is a list or full records where the search term found a match under that column name.

For example running in a model "Jam" with "name", "flavour", "colour" and "rating" colums one could:

	Jam.multisearch("red", ["name", "colour", "flavour"])

returning

	{"name" => [], "colour" => [#<:id => "1", :name => "Strawberry", :flavour => "Strawberry", :colour => "Red", :rating => "5">, #<:id => "14", :name => "Elderberry Surprise", :flavour => "Elderberry", :colour => "Red", :rating => "3">]}

Here the first column is always returned even if empty, only subsequent columns with results are returned.


## Installation

Add this line to your application's Gemfile:

    gem 'multisearch'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install multisearch

## Usage

Use as a class method as mentioned above. Retrieve results as a hash of different data sets. useful extraction methods are: 

* `@results.each do |key, value|`
* `if key == @results.first[0]`
* `if value.count == 0`

Oh a fairly useful feature is you can use capitals or spaces in the list given to multisearch and it will convert them to one-word in lower case. Useful for displaying results by the "key" name in a view while searching a different format in the database. This could easily be changed to an underscore if you clone it.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
