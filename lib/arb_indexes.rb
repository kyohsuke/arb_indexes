module ActiveRecord
  class Base
    class << self
      def indexes
        connection.indexes(table_name)
      end
    end
  end
end
