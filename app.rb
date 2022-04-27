require 'rubygems'
require 'json'
require 'csv'
require 'google_drive'

require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/annuaire_maire'

# my_csv = CSV.read('db/food_test.csv')
# puts my_csv

# CSV.foreach('db/food_test.csv') do |row|
#   puts row
# end

####### ----- Instantiation de mon annuaire maire
my_annaire = AnnuaireMaire.new('https://www.annuaire-des-mairies.com/val-d-oise.html')

# my_annaire.save_as_JSON
# my_annaire.save_as_CSV

# table = CSV.parse(File.read("db/annuaire.csv"), headers: true)

# puts table[-1]["ville"]

my_annaire.save_as_SPREADSHEET