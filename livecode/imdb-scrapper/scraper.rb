require 'open-uri'
require 'nokogiri'
require "yaml"

url = "https://www.imdb.com/chart/top"
base_url = "https://www.imdb.com"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

movies_initial_list = []
movies = []

html_doc.search('.titleColumn a')[0..4].each do |element|
  movies_initial_list << [element.attribute('href').value, element.text.strip]
end

movies_initial_list.each do |movie_a|
  html_file = open("#{base_url}#{movie_a[0]}").read
  html_doc  = Nokogiri::HTML(html_file)

  movie_hash = {}
  movie_hash[:title] = movie_a[1]

  html_doc.search('.plot_summary').each do |element|
    movie_hash[:storyline] = element.search('.summary_text').first.text.strip
    movie_hash[:director]  = element.search('.credit_summary_item a').first.text.strip
    movie_hash[:cast]      = []

    element.search('.credit_summary_item').last.search('a')[0..2].each do |sub_element|
      movie_hash[:cast] << sub_element.text.strip
    end
  end

  movie_hash[:year] = html_doc.search('#titleYear').first.text.strip[1..4]

  movies << movie_hash
end

# For this to work,
# REMEMBER TO CREATE THE the_file.yml ON YOUR MACHINE!!!!

File.open("the_file.yml", "w") do |f|
  f.write(movies.to_yaml)
end
