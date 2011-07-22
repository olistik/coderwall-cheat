#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

def current_badges
  doc = Nokogiri::HTML(open('http://coderwall.com/mauriziodemagnis'))
  doc.css('.badges li').size()
end

old_badges = current_badges
while old_badges == current_badges do
  puts "still the same badges"
  sleep (rand * 20).to_i + 10
end

`growlnotify -m 'achieved!' -s`