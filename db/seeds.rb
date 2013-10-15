# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create({ name: 'Chicago' , { name: 'Copenhagen' )
#   Mayor.create(name: 'Emanuel', city: cities.first)
    
##################################################
####### Change these words to your liking #######
#################################################
word_bank = [
  'i do work',
  'Vestibulum',
  'id',
  'ligula',
  'porta',
  'felis',
  'euismod',
  'semper',
  'Maecenas',
  'sed',
  'diam',
  'eget',
  'risus',
  'varius',
  'blandit',
  'sit',
  'amet',
  'non',
  'magna',
  'Nulla',
  'vitae',
  'elit',
  'libero',
  'pharetra augue',
  'Praesent',
  'commodo',
  'cursus magn',
  'vel',
  'scelerisque',
  'nisl',
  'consectetur',
  'et'
]

word_bank.each do |word|
  WordBank.create( word: word )
end