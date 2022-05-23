# # frozen_string_literal: true

# require_relative "stringer/version"

# module Stringer
#   class Error < StandardError; end
#   # Your code goes here...
# end

require "stringer/version"
module Stringer
  def self.spacify *strings
    string = ""
    strings.each_with_index do |s,i|
      if i == 0 
        string += s
      else 
        string += " " + s
      end
    end
    string
  end

  def self.minify strings, max
    length = strings.length
    string = ""

    for i in 0...length 
      if i >= max 
        string += "..."
      break
      elsif length == i
        string += strings[i] 
        break
      else
        string += strings[i]
      end
    end

    string
  end

  def self.replacify *strings
    string = strings[0]
    string.split(" ").collect { |i| i == strings[1] ? strings[2] : i }.join(" ")
  end

  def self.tokenize string
    string.split(" ")
  end
  
  def self.removify *strings
    string = strings[0]
    string.split(" ").reject { |i| i == strings[1] }.join(" ")
  end
end 



