require "frankensql/version"

module Frankensql
  def self.search(table, params)
 		query = ["SELECT * FROM #{table} WHERE id > 0"]
 		params.each_key{ |key| add_to_query(params.fetch(key), key) }
 		ActiveRecord::Base.connection.execute(query.join(" "))
  end

  private

  def self.add_to_query(key, value)
  	is_present?(param) ? (query << "AND #{key} LIKE '%#{value}%'") : nil
  end

  def self.is_present?(type)
  	!type.empty? && !type.include?(";")
  end
end
