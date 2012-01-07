# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  require 'populator'
  
  [Post].each(&:delete_all)
  
  Post.populate 100 do |post|
    post.title = Populator.words(1..3).titleize
    post.body = Populator.sentences(2..10)
  end