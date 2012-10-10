# arb_indexes - get indexes from Model
===========

## Usage
put the Gemfile
```ruby
group :development do
  gem 'arb_indexes', :git => 'git://github.com/kyohsuke/arb_indexes.git'
end
```

kick it on rails console

```ruby
User.indexes #=>
[#<struct ActiveRecord::ConnectionAdapters::IndexDefinition
  table="users",
  name="index_users_on_screen_name",
  unique=false,
  columns=["screen_name"],
  lengths=[nil],
  orders=nil>]
```

## Monkey Patching if you don't need to bundle
touch config/initializers/arb_indexes.rb and put it.

```ruby
module ActiveRecord
  class Base
    class << self
      def indexes
        connection.indexes(table_name)
      end
    end
  end
end
```

## See Also
http://stackoverflow.com/questions/1683948/activerecord-finding-existing-table-indexes
Please "+1" this answer if you like.

## License
MIT
