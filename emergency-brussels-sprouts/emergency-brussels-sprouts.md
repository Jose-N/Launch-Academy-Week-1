## OMG We Need Emergency Brussels Sprouts!

We have run out of Brussels Sprouts! A recent drought in the West Coast has caused a shortage of our favorite ingredient. This is a problem.

Luckily, we have contacts in Belgium that can send us emergency shipments of Brussels Sprouts. However, we have to share our cargo with someone else who wants [Cheesy Poofs](https://www.youtube.com/watch?v=-XlYj1iyAlk). We need to be able to calculate weights and interact with the containers to plan our shipment accordingly.

### Learning Goals
* Use existing unit tests to guide the writing of methods that make the tests pass
* Observe how a set of unit tests set the stage for writing code to produce desired behavior
* Write a class method as an alternate constructor

### Requirements and Contextual Information

#### Class methods
So far, the methods you've created for your classes have been `instance methods`. They exist to be called on a particular instance of your class. You create an instance of your class like `my_instance = My_class.new()`. Then you can call something like `my_instance.give_me_data` to get your data. There are also methods that are meant to be called at the class level. `.new` above is one of these. There is no instance created yet to call it on. So you call it on the class itself. In our code files, class methods are distinguished from instance methods by prepending `self.` to the method name, e.g. `def self.parse`

There are two primary use cases where class methods come in handy:

**Alternate constructors**: In Ruby we can only have a single constructor for a class (i.e. only one implementation of `def initialize`). In some cases it is useful to be able to construct an object multiple ways depending on different types of input. For instance, we may need two different ways to construct a date object in our program: passing in distinct year, month, and day values or by passing in an ISO 8601 string. To do this, we could set up our `initialize` method to take in  the year, month and day values. This would be used directly with `Date.new`. Then we could create a class method called `Date.parse` which would take in the ISO 8601 string, parse it into the year, month and day values, and feed that into `Date.new` to create our new date object. The `Date.parse` class method exists as an alternative to `Date.new` and allows us to provide other means for initializing an object (even though `Date.parse` utilizes `Date.new` internally). This might look like:

```ruby
class Date
  def initialize(year, month, day)
    @year = year
    @month = month
    @day = day
  end

  def self.parse(iso8601_string)
    tokens = iso8601_string.split("-")
    year = tokens[0].to_i
    month = tokens[1].to_i
    day = tokens[2].to_i

    Date.new(year, month, day)
  end
end
```

You would use this alternative constructor like `new_date_object = Date.parse(iso8601_string)`.

**Utility methods**: If a method does not depend on the existence of an instance of that class it may be more useful to include it as a class method. Say we knew that when working with our Car class, we will frequently need to convert miles to kilometers. We could make this available without the need to create a car instance by making it a class method. This might look like:

```ruby
class Car
  def initialize(miles_traveled)
    @miles_traveled = miles_traveled
  end

  def self.miles_to_km(miles)
    miles * 1.6
  end
end
```
You would use this utility by like: `distance_in_kilometers = Car.miles_to_km(distance_in_miles)`.

#### Assumptions:
* Each ingredient has a name and weight
  * A single Brussels Sprout weighs 20 grams.
  * A single Cheesy Poof weighs 0.5 grams.
* Each container has a weight, a maximum carrying capacity (max weight it can hold), and the ingredients it carries.
  * Each container can only carry one type of ingredient.
  * Brussels Sprouts-friendly containers weigh 90 kg and can carry a maximum weight of 140 kg.
  * Cheese Poof containers weigh 20 kg and can carry a maximum weight of 10 kg (they are very sturdy).

### Instructions

Unit tests that take into account the above requirements have already been written and included in this assignment. You'll need to take the following steps to get started:

1) Run `et get emergency-brussels-sprouts`.

2) [Bundler](http://bundler.io/) is a Ruby dependency manager. You'll see this again in the future, but that's all you need to know for right now. First, run `gem install bundler`, and then run `bundle install` while in the directory for this challenge. This will install the `bundler` gem, and then it will read the `Gemfile` in this directory to install anything necessary to run our tests.

3) When you're ready to start writing code, run `rake`. Rake will run the `RSpec` tests that have been provided as part of this challenge. You'll also see rake again later, but you don't need to know more about it for now.

Now you're ready to go! The first test failure will look something like this:

```
➜  evening-oo-composition ✗ rake
/Users/mlg/.rubies/ruby-2.0.0-p576/bin/ruby -I/Users/mlg/.gem/ruby/2.0.0/gems/rspec-support-3.3.0/lib:/Users/mlg/.gem/ruby/2.0.0/gems/rspec-core-3.3.2/lib /Users/mlg/.gem/ruby/2.0.0/gems/rspec-core-3.3.2/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb
/Users/mlg/workspace/curriculum/onsite/evening-oo-composition/spec/lib/01_ingredient_spec.rb:3:in `<top (required)>': uninitialized constant Ingredient (NameError)
  from /Users/mlg/.gem/ruby/2.0.0/gems/rspec-core-3.3.2/lib/rspec/core/configuration.rb:1327:in `load'
  from /Users/mlg/.gem/ruby/2.0.0/gems/rspec-core-3.3.2/lib/rspec/core/configuration.rb:1327:in `block in load_spec_files'
  from /Users/mlg/.gem/ruby/2.0.0/gems/rspec-core-3.3.2/lib/rspec/core/configuration.rb:1325:in `each'
  from /Users/mlg/.gem/ruby/2.0.0/gems/rspec-core-3.3.2/lib/rspec/core/configuration.rb:1325:in `load_spec_files'
  from /Users/mlg/.gem/ruby/2.0.0/gems/rspec-core-3.3.2/lib/rspec/core/runner.rb:102:in `setup'
  from /Users/mlg/.gem/ruby/2.0.0/gems/rspec-core-3.3.2/lib/rspec/core/runner.rb:88:in `run'
  from /Users/mlg/.gem/ruby/2.0.0/gems/rspec-core-3.3.2/lib/rspec/core/runner.rb:73:in `run'
  from /Users/mlg/.gem/ruby/2.0.0/gems/rspec-core-3.3.2/lib/rspec/core/runner.rb:41:in `invoke'
  from /Users/mlg/.gem/ruby/2.0.0/gems/rspec-core-3.3.2/exe/rspec:4:in `<main>'
/Users/mlg/.rubies/ruby-2.0.0-p576/bin/ruby -I/Users/mlg/.gem/ruby/2.0.0/gems/rspec-support-3.3.0/lib:/Users/mlg/.gem/ruby/2.0.0/gems/rspec-core-3.3.2/lib /Users/mlg/.gem/ruby/2.0.0/gems/rspec-core-3.3.2/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb failed

```

What is this error telling us? It seems that the `Ingredient` class doesn't exist yet! Add it to `lib/ingredient.rb` and re-run your test. You should get a new error. New errors are the way of measuring progress as you resolve the test suite. Follow the tests and allow them to help you decide what code needs to be written next.


### Tips
* Write your `Ingredient` class first, then your `Container` class.
* You'll want to use a [class method](https://learn.launchacademy.com/lessons/class-instance-methods) for converting a new ingredient's weight to kg.
* The number of Brussels Sprouts that a container holds should be whole numbers and not decimals.
* Using a `while` loop with floating point numbers where one number is very small can easily throw your results off by 1. You can avoid this issue by using the integer `count` in your while loop conditional instead of the float `weight`.
* Remember that the weight of a container is both how much the container weighs and the weight of its total contents.
