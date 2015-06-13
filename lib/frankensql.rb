require "frankensql/version"

module Frankensql
  def self.search(table, params)
 		@query = ["SELECT * FROM #{table} WHERE id > 0"]
 		params.each_key{ |key| add_to_query(params[key], key) }
 		@query.join(" ")
  end

  private

  def self.add_to_query(value, key)
  	is_present?(value) ? (@query << "AND #{key} LIKE '%#{value}%'") : ("")
  end

  def self.is_present?(type)
  	!type.empty? && !type.include?(";")
  end
end
