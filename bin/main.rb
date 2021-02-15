#!/usr/bin/env ruby

require_relative '../lib/logic'

puts "\nWelcome, get the list of most active GitHub users in your country"
puts "Disclaimer: All information are obtained from the official website for GitHub rankings - 'https://commits.top'"
puts "Enjoy!"
puts ""

logic = Logic.new
puts "Countries"
print logic.list_of_countries
puts "\n\nSelect the country you want to view the list of most active GitHub users"

user_input_country = gets.chomp.strip
until logic.valid_country(user_input_country)
  puts 'Select a valid country name, please try again!'
  user_input_country = gets.chomp.strip
end

puts "To complete the search it\'s required to apply one of the filters below:"
puts "\n(1) All active users in #{user_input_country} \n(2) Active users in a range eg: (10 - 20) \n(3) Active user's username eg: ybadmus"
puts "\nPlease select the filter you want to apply (1, 2 or 3)"

user_input_filter = gets.chomp.strip.to_i
until (1..3).include? user_input_filter
  puts "\nSelect a valid filter (1, 2 or 3), please try again!"
  user_input_filter = gets.chomp.strip.to_i
end

case user_input_filter
  when 1

  when 2

  when 3
    
  else
    "You gave me #{user_input_filter} -- I have no idea what to do with that."
end


puts "\nMost active GitHub users in #{user_input_country}"


