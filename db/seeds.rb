Book.destroy_all

100.times do
  book_title = Faker::Book.title
  book_author = Faker::Book.author
  book_publisher = Faker::Book.publisher
  book_genre = Faker::Book.genre
  book_price = Faker::Commerce.price
  book_ISBN = Faker::Code.isbn
  book_pubDate = Faker::Date.between(from: 90.years.ago, to: Date.today)

  Book.create!(title: book_title, author: book_author, publisher: book_publisher,
             genre: book_genre, price: book_price, isbn: book_ISBN, pubDate: book_pubDate)
end

if Rails.env.development?
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

