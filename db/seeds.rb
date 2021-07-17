require "open-uri"

Movie.destroy_all
puts 'Destroy all movies'

List.destroy_all
puts 'Destroy all lists'

Bookmark.destroy_all
puts 'Destroy all bookmarks'

m1 = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
m2 = Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
m3 = Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
m4 = Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
puts 'Create new movies'

l1 = List.new(name: "Action")
l2 = List.new(name: "Adventure")
puts 'Create new lists'

image_pic = URI.open("https://i.pinimg.com/736x/74/ce/55/74ce55f0b86b862951d6e5641cea1be4.jpg")
l1.photo.attach(io: image_pic, filename: '74ce55f0b86b862951d6e5641cea1be4.jpg', content_type: 'image/jpg')
l2.photo.attach(io: image_pic, filename: '74ce55f0b86b862951d6e5641cea1be4.jpg', content_type: 'image/jpg')
l1.save!
l2.save!
puts 'Create new lists'

Bookmark.create(comment: 'This is a great collection', movie_id: m1.id, list_id: l1.id)
Bookmark.create(comment: 'Another good one', movie_id: m2.id, list_id: l1.id)
Bookmark.create(comment: 'For a rainny sunday', movie_id: m4.id,  list_id: l2.id)
Bookmark.create(comment: 'This is excellent!', movie_id: m3.id, list_id: l2.id)
puts 'Create new bookmars'
