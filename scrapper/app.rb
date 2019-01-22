require 'bundler'
Bundler.require
require 'pry'
require 'json'
require 'pp'
require "google_drive"
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'


#require_relative './lib/scrapper'
$:.unshift File.expand_path("./../lib", __FILE__)
#require 'app/scrapper'
require 'app/email_sender'
require 'views/done'
require 'views/index'

json = File.read('input.json')
obj = JSON.parse(json)
pp obj

#session = GoogleDrive::Session.from_config("config.json")
session = GoogleDrive::Session.from_config("config.json")

tempHash = {
    "key_a" => "val_a",
    "key_b" => "val_b"
}
File.open("db/email.json","w") do |f|
  f.write(tempHash.to_json)
end
