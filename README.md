[![Build Status](https://travis-ci.org/brett-richardson/rspec-assumptions.png?branch=master)](https://travis-ci.org/brett-richardson/rspec-assumptions)

Using Rspec Assumptions
=======================

Use RSpec assumptions to debug your specs.
Often when writing tests, you can find yourself testing your test set-up and not the subject itself.
That is where assumptions come in. Write an assumption about your test setup... and it will suceed silently.
However, it will notify you of errors when it fails.


Using Rspec Assumptions is super simple.


In your Gemfile:
```ruby
group :development, :testing do
  gem 'rspec-assumptions'
end
```


In your spec_helper.rb:
```ruby
require 'rspec/assumptions'
```


Define an assumption with the 'assumption' method.
If it fails, it will notify you... and if it suceeds, it does so quietly.


```ruby
describe Apple do
  let( :apple ){ create :apple }
  let( :pear  ){ create :pear  }

  describe '#+' do
    subject{ apple + pear }
    assume{ apple.class.should != pear.class }

    it{ should be_a FruitSalad }
  end
end
```
