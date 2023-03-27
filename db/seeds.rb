require 'json'
require 'open-uri'
require 'nokogiri'

Book.destroy_all

URL = 'https://books.toscrape.com/index.html'
html = URI.open(URL).read
doc = Nokogiri::HTML.parse(html)

books = doc.css(".product_pod")


books.each do |book|
  title = book.css("h3 a").attr("title").value
  author = book.css(".author").text
  image_url = book.css("img").attr("src").value

  # Create a new instance of your Book model using the data
  Book.create!(title: title, author: author, image_url: image_url)
end
puts "books seeded"


# images = doc.css(".thumbnail img")

# # Loop through the images and print the image URL for each one
# images.each do |image|
#   puts image.attr("src")
# end
