require 'active_support'

module ArbIndexes
  extend ActiveSupport::Concern
  def indexes
    connection.indexes(table_name)
  end
end

ActiveRecord::Base.send(:include, ArbIndexes)
