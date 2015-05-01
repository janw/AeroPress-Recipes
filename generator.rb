#!/usr/bin/ruby

require 'json'
require 'digest'

recipesDictionary = Hash.new
recipesArray = Array.new

recipes = Dir["./recipes/*.aeropress"]

recipes.each do |filename|
	recipeDictionary = Hash.new
	lines = File.foreach(filename).first(2)
    puts filename
    name = lines[0].gsub!('# ','').gsub!("\n",'')
    description = lines[1].gsub!('## ','').gsub!("\n",'')
    puts name
    puts description
    recipeDictionary[:name] = name
    recipeDictionary[:description] = description
    recipeDictionary[:file] = filename
    recipeDictionary[:md5] = Digest::MD5.file(filename).hexdigest 
    recipesArray.push(recipeDictionary)
end

recipesDictionary[:recipes] = recipesArray

File.open("recipes.json","w") do |f|
  f.write(recipesDictionary.to_json)
end